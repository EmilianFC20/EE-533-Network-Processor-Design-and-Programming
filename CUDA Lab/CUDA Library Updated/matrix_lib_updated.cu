#include <cuda_runtime.h>
#include <stdio.h>
#include <stdint.h> // Added for uint32_t

#define TILE_WIDTH 16

// *******************************************************************
// **                 Matrix Multiplication Function                  **
// *******************************************************************

__global__ void matrixMultiplyTiled(float *A, float *B, float *C, int N) {
    __shared__ float ds_A[TILE_WIDTH][TILE_WIDTH];
    __shared__ float ds_B[TILE_WIDTH][TILE_WIDTH];

    int bx = blockIdx.x; int by = blockIdx.y;
    int tx = threadIdx.x; int ty = threadIdx.y;

    int Row = by * TILE_WIDTH + ty;
    int Col = bx * TILE_WIDTH + tx;

    float Pvalue = 0.0;
    for (int m = 0; m < (N + TILE_WIDTH - 1) / TILE_WIDTH; ++m) {
        if (Row < N && (m*TILE_WIDTH+tx) < N)
            ds_A[ty][tx] = A[Row * N + m * TILE_WIDTH + tx];
        else
            ds_A[ty][tx] = 0.0f;

        if (Col < N && (m*TILE_WIDTH+ty) < N)
            ds_B[ty][tx] = B[(m*TILE_WIDTH + ty) * N + Col];
        else
            ds_B[ty][tx] = 0.0f;

        __syncthreads();

        for (int k = 0; k < TILE_WIDTH; ++k)
            Pvalue += ds_A[ty][k] * ds_B[k][tx];
        __syncthreads();
    }

    if (Row < N && Col < N)
        C[Row * N + Col] = Pvalue;
}

// Exposed C function for Python
extern "C" void gpu_matrix_multiply(float *h_A, float *h_B, float *h_C, int N) {
    size_t size = N * N * sizeof(float);
    float *d_A, *d_B, *d_C;

    cudaMalloc((void**)&d_A, size);
    cudaMalloc((void**)&d_B, size);
    cudaMalloc((void**)&d_C, size);

    cudaMemcpy(d_A, h_A, size, cudaMemcpyHostToDevice);
    cudaMemcpy(d_B, h_B, size, cudaMemcpyHostToDevice);

    dim3 dimBlock(TILE_WIDTH, TILE_WIDTH);
    dim3 dimGrid((N + TILE_WIDTH - 1) / TILE_WIDTH, (N + TILE_WIDTH - 1) / TILE_WIDTH);

    matrixMultiplyTiled<<<dimGrid, dimBlock>>>(d_A, d_B, d_C, N);
    cudaDeviceSynchronize();

    cudaMemcpy(h_C, d_C, size, cudaMemcpyDeviceToHost);

    cudaFree(d_A); cudaFree(d_B); cudaFree(d_C);
}


// *******************************************************************
// **                  Image Convolution Function                   **
// *******************************************************************

__global__ void convolution_kernel(
    uint32_t* d_output,
    const uint32_t* d_input,
    int width,
    int height,
    const float* d_filter,
    int N
) {
    // Calculate the global x and y coordinates of the thread
    int c = blockIdx.x * blockDim.x + threadIdx.x;
    int r = blockIdx.y * blockDim.y + threadIdx.y;

    int filter_half = N / 2;

    // Check if the thread is within the valid output image bounds (excluding borders)
    if (r >= filter_half && r < height - filter_half && c >= filter_half && c < width - filter_half) {
        float sum = 0.0f;

        // Apply the filter kernel
        for (int i = 0; i < N; ++i) {
            for (int j = 0; j < N; ++j) {
                int img_r = r - filter_half + i;
                int img_c = c - filter_half + j;
                
                // Flip the kernel for true convolution
                int filter_idx = (N - 1 - i) * N + (N - 1 - j);
                
                sum += (float)d_input[img_r * width + img_c] * d_filter[filter_idx];
            }
        }
        d_output[r * width + c] = (uint32_t)sum;
    }
}

// Exposed C function for Python for convolution
extern "C" void gpu_convolution(
    uint32_t* h_output,
    const uint32_t* h_input,
    int width,
    int height,
    const float* h_filter,
    int N
) {
    size_t image_size_bytes = width * height * sizeof(uint32_t);
    size_t filter_size_bytes = N * N * sizeof(float);

    uint32_t *d_input, *d_output;
    float *d_filter;

    // Allocate memory on the GPU
    cudaMalloc(&d_input, image_size_bytes);
    cudaMalloc(&d_output, image_size_bytes);
    cudaMalloc(&d_filter, filter_size_bytes);

    // Copy data from host (CPU) to device (GPU)
    cudaMemcpy(d_input, h_input, image_size_bytes, cudaMemcpyHostToDevice);
    cudaMemcpy(d_filter, h_filter, filter_size_bytes, cudaMemcpyHostToDevice);
    cudaMemset(d_output, 0, image_size_bytes);

    // Define thread block and grid dimensions
    dim3 threadsPerBlock(16, 16);
    dim3 numBlocks((width + threadsPerBlock.x - 1) / threadsPerBlock.x, 
                   (height + threadsPerBlock.y - 1) / threadsPerBlock.y);

    // Launch the kernel
    convolution_kernel<<<numBlocks, threadsPerBlock>>>(d_output, d_input, width, height, d_filter, N);
    
    // Wait for the GPU to finish
    cudaDeviceSynchronize();

    // Copy the result back from device to host
    cudaMemcpy(h_output, d_output, image_size_bytes, cudaMemcpyDeviceToHost);

    // Free GPU memory
    cudaFree(d_input);
    cudaFree(d_output);
    cudaFree(d_filter);
}
