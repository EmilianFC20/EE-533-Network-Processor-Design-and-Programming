#include <cuda_runtime.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/stat.h>
#include <time.h>

// Defines must be before includes
#define STB_IMAGE_IMPLEMENTATION
#include "stb_image.h"
#define STB_IMAGE_WRITE_IMPLEMENTATION
#include "stb_image_write.h"

#define cudaCheckErrors(msg) \
    do { \
        cudaError_t __err = cudaGetLastError(); \
        if (__err != cudaSuccess) { \
            fprintf(stderr, "Fatal error: %s (%s at %s:%d)\n", \
                msg, cudaGetErrorString(__err), \
                __FILE__, __LINE__); \
            fprintf(stderr, "*** FAILED - ABORTING\n"); \
            exit(1); \
        } \
    } while (0)

/**
 * @brief CUDA kernel to apply an N x N convolution filter to an image.
 */
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

/**
 * @brief Host function to manage GPU memory and launch the convolution kernel.
 */
void apply_convolution_gpu(
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
    cudaCheckErrors("cudaMalloc failed");

    // Copy data from host (CPU) to device (GPU)
    cudaMemcpy(d_input, h_input, image_size_bytes, cudaMemcpyHostToDevice);
    cudaMemcpy(d_filter, h_filter, filter_size_bytes, cudaMemcpyHostToDevice);
    cudaMemset(d_output, 0, image_size_bytes); // Initialize output to 0
    cudaCheckErrors("cudaMemcpy/cudaMemset failed");

    // Define thread block and grid dimensions
    dim3 threadsPerBlock(16, 16);
    dim3 numBlocks((width + threadsPerBlock.x - 1) / threadsPerBlock.x, 
                   (height + threadsPerBlock.y - 1) / threadsPerBlock.y);

    // Launch the kernel
    convolution_kernel<<<numBlocks, threadsPerBlock>>>(d_output, d_input, width, height, d_filter, N);
    cudaCheckErrors("Kernel launch failed");
    
    // Wait for the GPU to finish and check for any errors
    cudaDeviceSynchronize();
    cudaCheckErrors("cudaDeviceSynchronize failed");

    // Copy the result back from device to host
    cudaMemcpy(h_output, d_output, image_size_bytes, cudaMemcpyDeviceToHost);
    cudaCheckErrors("cudaMemcpy (device-to-host) failed");

    // Free GPU memory
    cudaFree(d_input);
    cudaFree(d_output);
    cudaFree(d_filter);
}


// --- Filter generation functions (remain on CPU) ---
float* generate_box_blur_filter(int N) {
    float* filter = (float*)malloc(N * N * sizeof(float));
    if (!filter) return NULL;
    float value = 1.0f / (float)(N * N);
    for (int i = 0; i < N * N; ++i) filter[i] = value;
    return filter;
}

float* generate_sharpen_filter() {
    float* filter = (float*)malloc(3 * 3 * sizeof(float));
    if (!filter) return NULL;
    float values[] = { 0, -1, 0, -1, 5, -1, 0, -1, 0 };
    memcpy(filter, values, 9 * sizeof(float));
    return filter;
}

float* generate_laplacian_filter() {
    float* filter = (float*)malloc(3 * 3 * sizeof(float));
    if (!filter) return NULL;
    float values[] = { -1, -1, -1, -1, 8, -1, -1, -1, -1 };
    memcpy(filter, values, 9 * sizeof(float));
    return filter;
}

float* generate_sobel_x_filter() {
    float* filter = (float*)malloc(3 * 3 * sizeof(float));
    if (!filter) return NULL;
    float values[] = { -1, 0, 1, -2, 0, 2, -1, 0, 1 };
    memcpy(filter, values, 9 * sizeof(float));
    return filter;
}

int main() {
    const char* image_paths[] = {
        "Convolution Images/image1.png",
        "Convolution Images/image2.png",
        "Convolution Images/image3.png"
    };
    const int num_images = sizeof(image_paths) / sizeof(image_paths[0]);
    int blur_filter_sizes[] = {3, 5, 7};
    const int num_blur_sizes = sizeof(blur_filter_sizes) / sizeof(blur_filter_sizes[0]);

    mkdir("Convolution Images", 0777); 
    FILE* csv_file = fopen("performance_results_gpu.csv", "w");
    if (!csv_file) {
        perror("Failed to open performance_results_gpu.csv");
        return 1;
    }
    fprintf(csv_file, "ImagePath,ImageSize,FilterType,FilterSize,Time(ms)\n");

    for (int i = 0; i < num_images; ++i) {
        const char* image_path = image_paths[i];
        int width, height, channels;
        unsigned char* img_8bit_in = stbi_load(image_path, &width, &height, &channels, 1);
        if (!img_8bit_in) {
            fprintf(stderr, "Error: Could not load image %s.\n", image_path);
            continue;
        }

        uint32_t* img_32bit_in = (uint32_t*)malloc(width * height * sizeof(uint32_t));
        for(int k = 0; k < width * height; ++k) img_32bit_in[k] = (uint32_t)img_8bit_in[k];
        stbi_image_free(img_8bit_in);

        uint32_t* img_32bit_out = (uint32_t*)malloc(width * height * sizeof(uint32_t));
        unsigned char* img_8bit_out = (unsigned char*)malloc(width * height * sizeof(unsigned char));

        if (!img_32bit_in || !img_32bit_out || !img_8bit_out) {
            fprintf(stderr, "Error: Failed to allocate memory for image buffers.\n");
            if (img_32bit_in) free(img_32bit_in); if (img_32bit_out) free(img_32bit_out); if (img_8bit_out) free(img_8bit_out);
            continue;
        }
        
        const char* filter_types[] = {"blur", "sharpen", "laplacian", "sobel_x"};
        for (int f_idx = 0; f_idx < 4; ++f_idx) {
            const char* filter_type = filter_types[f_idx];
            if (strcmp(filter_type, "blur") == 0) {
                for (int j = 0; j < num_blur_sizes; ++j) {
                    int N = blur_filter_sizes[j];
                    float* filter = generate_box_blur_filter(N);
                    if (filter) {
                        cudaEvent_t start, stop;
                        cudaEventCreate(&start);
                        cudaEventCreate(&stop);
                        cudaEventRecord(start);
                        apply_convolution_gpu(img_32bit_out, img_32bit_in, width, height, filter, N);
                        cudaEventRecord(stop);
                        cudaEventSynchronize(stop);
                        float time_ms;
                        cudaEventElapsedTime(&time_ms, start, stop);
                        fprintf(csv_file, "%s,%dx%d,%s,%d,%.6f\n", image_path, width, height, filter_type, N, time_ms);

                        for(int k=0; k < width * height; ++k) img_8bit_out[k] = (unsigned char)(img_32bit_out[k] > 255 ? 255 : img_32bit_out[k]);
                        char filename[256];
                        sprintf(filename, "Convolution Images/output_gpu_%dx%d_%s_%dx%d.png", width, height, filter_type, N, N);
                        stbi_write_png(filename, width, height, 1, img_8bit_out, width);
                        free(filter);
                        cudaEventDestroy(start);
                        cudaEventDestroy(stop);
                    }
                }
            } else {
                int N = 3;
                float* filter = NULL;
                if(strcmp(filter_type, "sharpen") == 0) filter = generate_sharpen_filter();
                else if(strcmp(filter_type, "laplacian") == 0) filter = generate_laplacian_filter();
                else if(strcmp(filter_type, "sobel_x") == 0) filter = generate_sobel_x_filter();
                
                if (filter) {
                    cudaEvent_t start, stop;
                    cudaEventCreate(&start);
                    cudaEventCreate(&stop);
                    cudaEventRecord(start);
                    apply_convolution_gpu(img_32bit_out, img_32bit_in, width, height, filter, N);
                    cudaEventRecord(stop);
                    cudaEventSynchronize(stop);
                    float time_ms;
                    cudaEventElapsedTime(&time_ms, start, stop);
                    fprintf(csv_file, "%s,%dx%d,%s,%d,%.6f\n", image_path, width, height, filter_type, N, time_ms);

                    for(int k=0; k < width * height; ++k) img_8bit_out[k] = (unsigned char)(img_32bit_out[k] > 255 ? 255 : img_32bit_out[k]);
                    char filename[256];
                    sprintf(filename, "Convolution Images/output_gpu_%dx%d_%s_%dx%d.png", width, height, filter_type, N, N);
                    stbi_write_png(filename, width, height, 1, img_8bit_out, width);
                    free(filter);
                    cudaEventDestroy(start);
                    cudaEventDestroy(stop);
                }
            }
        }
        free(img_32bit_in);
        free(img_32bit_out);
        free(img_8bit_out);
    }

    fclose(csv_file);
    printf("\nGPU Performance test complete. Output images saved to 'Convolution Images' and results to 'performance_results_gpu.csv'.\n");
    return 0;
}
