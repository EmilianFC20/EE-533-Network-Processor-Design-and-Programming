#include <cuda_runtime.h>
#include <stdio.h>
#include <stdint.h>

#define cudaCheckErrors(msg) \
    do { \
        cudaError_t __err = cudaGetLastError(); \
        if (__err != cudaSuccess) { \
            fprintf(stderr, "Fatal error in library: %s (%s at %s:%d)\n", \
                msg, cudaGetErrorString(__err), \
                __FILE__, __LINE__); \
            exit(1); \
        } \
    } while (0)

// *******************************************************************
// **                 Matrix Multiplication Function                  **
// *******************************************************************

#define TILE_WIDTH 16

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
    cudaCheckErrors("Matrix multiply cudaMalloc failed");

    cudaMemcpy(d_A, h_A, size, cudaMemcpyHostToDevice);
    cudaMemcpy(d_B, h_B, size, cudaMemcpyHostToDevice);
    cudaCheckErrors("Matrix multiply cudaMemcpy (host-to-device) failed");

    dim3 dimBlock(TILE_WIDTH, TILE_WIDTH);
    dim3 dimGrid((N + TILE_WIDTH - 1) / TILE_WIDTH, (N + TILE_WIDTH - 1) / TILE_WIDTH);

    matrixMultiplyTiled<<<dimGrid, dimBlock>>>(d_A, d_B, d_C, N);
    cudaDeviceSynchronize();
    cudaCheckErrors("Matrix multiply kernel launch failed");

    cudaMemcpy(h_C, d_C, size, cudaMemcpyDeviceToHost);
    cudaCheckErrors("Matrix multiply cudaMemcpy (device-to-host) failed");

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
    int c = blockIdx.x * blockDim.x + threadIdx.x;
    int r = blockIdx.y * blockDim.y + threadIdx.y;
    int filter_half = N / 2;

    if (r >= filter_half && r < height - filter_half && c >= filter_half && c < width - filter_half) {
        float sum = 0.0f;
        for (int i = 0; i < N; ++i) {
            for (int j = 0; j < N; ++j) {
                int img_r = r - filter_half + i;
                int img_c = c - filter_half + j;
                int filter_idx = (N - 1 - i) * N + (N - 1 - j);
                sum += (float)d_input[img_r * width + img_c] * d_filter[filter_idx];
            }
        }
        d_output[r * width + c] = (uint32_t)sum;
    }
}

// Exposed C function for Python for convolution
extern "C" void gpu_apply_convolution(
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

    cudaMalloc(&d_input, image_size_bytes);
    cudaMalloc(&d_output, image_size_bytes);
    cudaMalloc(&d_filter, filter_size_bytes);
    cudaCheckErrors("Convolution cudaMalloc failed");

    cudaMemcpy(d_input, h_input, image_size_bytes, cudaMemcpyHostToDevice);
    cudaMemcpy(d_filter, h_filter, filter_size_bytes, cudaMemcpyHostToDevice);
    cudaMemset(d_output, 0, image_size_bytes);
    cudaCheckErrors("Convolution cudaMemcpy/cudaMemset failed");

    dim3 threadsPerBlock(16, 16);
    dim3 numBlocks((width + threadsPerBlock.x - 1) / threadsPerBlock.x, 
                   (height + threadsPerBlock.y - 1) / threadsPerBlock.y);

    convolution_kernel<<<numBlocks, threadsPerBlock>>>(d_output, d_input, width, height, d_filter, N);
    cudaDeviceSynchronize();
    cudaCheckErrors("Convolution kernel launch failed");

    cudaMemcpy(h_output, d_output, image_size_bytes, cudaMemcpyDeviceToHost);
    cudaCheckErrors("Convolution cudaMemcpy (device-to-host) failed");

    cudaFree(d_input);
    cudaFree(d_output);
    cudaFree(d_filter);
}