#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/stat.h>
#include <time.h>

#define STB_IMAGE_IMPLEMENTATION
#include "stb_image.h"
#define STB_IMAGE_WRITE_IMPLEMENTATION
#include "stb_image_write.h"

void apply_convolution(
    uint32_t* output_image,
    const uint32_t* input_image,
    int width,
    int height,
    const float* filter,
    int N
) {
    int filter_half = N / 2;
    float sum;

    // Initialize the output image with zeros.
    memset(output_image, 0, width * height * sizeof(uint32_t));

    // Iterate over the inner pixels where the filter fits completely
    for (int r = filter_half; r < height - filter_half; ++r) {
        for (int c = filter_half; c < width - filter_half; ++c) {
            sum = 0.0f;

            // Apply the filter kernel
            for (int i = 0; i < N; ++i) {
                for (int j = 0; j < N; ++j) {
                    int img_r = r - filter_half + i;
                    int img_c = c - filter_half + j;
                    // Flip the kernel for true convolution: filter[(N-1-i)*N + (N-1-j)]
                    sum += (float)input_image[img_r * width + img_c] * filter[(N - 1 - i) * N + (N - 1 - j)];
                }
            }
            output_image[r * width + c] = (uint32_t)sum;
        }
    }
}

float* generate_box_blur_filter(int N) {
    float* filter = (float*)malloc(N * N * sizeof(float));
    if (!filter) return NULL;
    float value = 1.0f / (float)(N * N);
    for (int i = 0; i < N * N; ++i) {
        filter[i] = value;
    }
    return filter;
}

float* generate_sharpen_filter(int N) {
    float* filter = (float*)calloc(N * N, sizeof(float));
    if (!filter) return NULL;
    if (N % 2 == 0) return filter; // Return empty for even N

    int center = N / 2;
    filter[(center - 1) * N + center] = -1;
    filter[center * N + (center - 1)] = -1;
    filter[center * N + center] = 5;
    filter[center * N + (center + 1)] = -1;
    filter[(center + 1) * N + center] = -1;

    return filter;
}

float* generate_laplacian_filter(int N) {
    float* filter = (float*)calloc(N * N, sizeof(float));
    if (!filter) return NULL;
    if (N % 2 == 0) return filter; // Return empty for even N

    int center = N / 2;
    filter[(center-1)*N + (center-1)] = -1; filter[(center-1)*N + center] = -1; filter[(center-1)*N + (center+1)] = -1;
    filter[center*N + (center-1)]     = -1; filter[center*N + center]     =  8; filter[center*N + (center+1)]     = -1;
    filter[(center+1)*N + (center-1)] = -1; filter[(center+1)*N + center] = -1; filter[(center+1)*N + (center+1)] = -1;

    return filter;
}

float* generate_sobel_x_filter(int N) {
    float* filter = (float*)calloc(N * N, sizeof(float));
    if (!filter) return NULL;
    if (N % 2 == 0) return filter; // Return empty for even N

    int center = N / 2;
    filter[(center - 1) * N + (center - 1)] = -1; filter[(center - 1) * N + (center + 1)] = 1;
    filter[center * N + (center - 1)]       = -2; filter[center * N + (center + 1)]       = 2;
    filter[(center + 1) * N + (center - 1)] = -1; filter[(center + 1) * N + (center + 1)] = 1;

    return filter;
}

int main() {
    const char* image_paths[] = {
        "Convolution Images/image1.png",
        "Convolution Images/image2.png",
        "Convolution Images/image3.png"
    };
    const int num_images = sizeof(image_paths) / sizeof(image_paths[0]);
    
    int filter_sizes[] = {3, 5, 7};
    const int num_filter_sizes = sizeof(filter_sizes) / sizeof(filter_sizes[0]);
    
    const char* filter_types[] = {"blur", "sharpen", "laplacian", "sobel_x"};
    const int num_filter_types = sizeof(filter_types) / sizeof(filter_types[0]);

    FILE* csv_file = fopen("performance_results_cpu.csv", "w");
    if (!csv_file) {
        perror("Failed to open performance_results_cpu.csv");
        return 1;
    }
    fprintf(csv_file, "ImagePath,ImageSize,FilterType,FilterSize,Time(s)\n");

    for (int i = 0; i < num_images; ++i) {
        const char* image_path = image_paths[i];

        int width, height, channels;
        unsigned char* img_8bit_in = stbi_load(image_path, &width, &height, &channels, 1);
        if (!img_8bit_in) {
            fprintf(stderr, "Error: Could not load image %s.\n", image_path);
            continue;
        }

        uint32_t* img_32bit_in = (uint32_t*)malloc(width * height * sizeof(uint32_t));
        if (!img_32bit_in) {
            fprintf(stderr, "Error: Failed to allocate memory for 32-bit input image for %s.\n", image_path);
            stbi_image_free(img_8bit_in);
            continue;
        }
        for(int k = 0; k < width * height; ++k) {
            img_32bit_in[k] = (uint32_t)img_8bit_in[k];
        }
        stbi_image_free(img_8bit_in);

        uint32_t* img_32bit_out = (uint32_t*)malloc(width * height * sizeof(uint32_t));
        unsigned char* img_8bit_out = (unsigned char*)malloc(width * height * sizeof(unsigned char));

        if (!img_32bit_out || !img_8bit_out) {
            fprintf(stderr, "Error: Failed to allocate memory for output image buffers for %s.\n", image_path);
            free(img_32bit_in);
            if (img_32bit_out) free(img_32bit_out);
            if (img_8bit_out) free(img_8bit_out);
            continue;
        }
        
        for (int f_idx = 0; f_idx < num_filter_types; ++f_idx) {
            const char* filter_type = filter_types[f_idx];

            for (int s_idx = 0; s_idx < num_filter_sizes; ++s_idx) {
                int N = filter_sizes[s_idx];
                
                float* filter = NULL;
                if(strcmp(filter_type, "blur") == 0) {
                    filter = generate_box_blur_filter(N);
                } else {
                    if(strcmp(filter_type, "sharpen") == 0) filter = generate_sharpen_filter(N);
                    else if(strcmp(filter_type, "laplacian") == 0) filter = generate_laplacian_filter(N);
                    else if(strcmp(filter_type, "sobel_x") == 0) filter = generate_sobel_x_filter(N);
                }
                
                if (filter) {
                    clock_t start = clock();
                    apply_convolution(img_32bit_out, img_32bit_in, width, height, filter, N);
                    clock_t end = clock();
                    double time_spent = (double)(end - start) / CLOCKS_PER_SEC;
                    fprintf(csv_file, "%s,%dx%d,%s,%d,%.6f\n", image_path, width, height, filter_type, N, time_spent);

                    for(int k=0; k < width * height; ++k) img_8bit_out[k] = (unsigned char)(img_32bit_out[k] > 255 ? 255 : img_32bit_out[k]);
                    char filename[256];
                    sprintf(filename, "Convolution Images/output_%dx%d_%s_%dx%d.png", width, height, filter_type, N, N);
                    stbi_write_png(filename, width, height, 1, img_8bit_out, width);
                    free(filter);
                } else {
                    fprintf(stderr, "Error: Failed to allocate memory for %s filter (size %d) for image %s.\n", filter_type, N, image_path);
                }
            }
        }

        free(img_32bit_in);
        free(img_32bit_out);
        free(img_8bit_out);
    }

    fclose(csv_file);
    printf("\nPerformance test complete. Output images have been saved to 'Convolution Images' directory and results to 'performance_results_cpu.csv'.\n");

    return 0;
}
