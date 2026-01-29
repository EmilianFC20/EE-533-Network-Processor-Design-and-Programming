#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/stat.h>
#include <time.h> // For performance measurement

// Defines must be before includes
#define STB_IMAGE_IMPLEMENTATION
#include "stb_image.h"
#define STB_IMAGE_WRITE_IMPLEMENTATION
#include "stb_image_write.h"

/**
 * @brief Applies an N x N convolution filter to an image.
 *        This implementation performs true convolution by flipping the kernel.
 * @param output_image Pointer to the buffer for the output image (uint32_t).
 * @param input_image Pointer to the constant input image (uint32_t).
 * @param width The width of the image.
 * @param height The height of the image.
 * @param filter Pointer to the N x N filter kernel.
 * @param N The width and height of the filter.
 */
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

    // Initialize the output image with zeros. This also handles the border.
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

float* generate_sharpen_filter() {
    float* filter = (float*)malloc(3 * 3 * sizeof(float));
    if (!filter) return NULL;
    float values[] = {
         0, -1,  0,
        -1,  5, -1,
         0, -1,  0
    };
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
    float values[] = {
        -1, 0, 1,
        -2, 0, 2,
        -1, 0, 1
    };
    memcpy(filter, values, 9 * sizeof(float));
    return filter;
}

int main() {
    //
    // ================== USER CONFIGURATION ==================
    //
    // To properly benchmark multiple image sizes (M values), please update
    // this array with paths to images of different dimensions.
    //
    const char* image_paths[] = {
        "Convolution Images/image1.png", // Example: 256x256
        "Convolution Images/image2.png", // TODO: Replace with a 512x512 image
        "Convolution Images/image3.png" // TODO: Replace with a 1024x1024 image
    };
    const int num_images = sizeof(image_paths) / sizeof(image_paths[0]);

    //
    // Filter sizes (N x N) to test for the blur filter.
    //
    int blur_filter_sizes[] = {3, 5, 7}; // e.g., 3x3, 5x5, 7x7
    const int num_blur_sizes = sizeof(blur_filter_sizes) / sizeof(blur_filter_sizes[0]);
    //
    // ========================================================
    //

    // Create directory for output images if it doesn't exist
    // 0777 grants read, write, and execute permissions to all users
    mkdir("Convolution Images", 0777); 

    // Open CSV file for performance results
    FILE* csv_file = fopen("performance_results.csv", "w");
    if (!csv_file) {
        perror("Failed to open performance_results.csv");
        return 1;
    }
    fprintf(csv_file, "ImagePath,ImageSize,FilterType,FilterSize,Time(s)\n");


    for (int i = 0; i < num_images; ++i) {
        const char* image_path = image_paths[i];

        int width, height, channels;
        unsigned char* img_8bit_in = stbi_load(image_path, &width, &height, &channels, 1);
        if (!img_8bit_in) {
            fprintf(stderr, "Error: Could not load image %s. Please ensure the path is correct and the file exists.\n", image_path);
            continue;
        }

        // Convert 8-bit input image to 32-bit for processing
        uint32_t* img_32bit_in = (uint32_t*)malloc(width * height * sizeof(uint32_t));
        if (!img_32bit_in) { // Check for malloc failure
            fprintf(stderr, "Error: Failed to allocate memory for 32-bit input image for %s.\n", image_path);
            stbi_image_free(img_8bit_in);
            continue;
        }
        for(int k = 0; k < width * height; ++k) {
            img_32bit_in[k] = (uint32_t)img_8bit_in[k];
        }
        stbi_image_free(img_8bit_in); // Free the original 8-bit image

        uint32_t* img_32bit_out = (uint32_t*)malloc(width * height * sizeof(uint32_t));
        unsigned char* img_8bit_out = (unsigned char*)malloc(width * height * sizeof(unsigned char));

        if (!img_32bit_out || !img_8bit_out) {
            fprintf(stderr, "Error: Failed to allocate memory for output image buffers for %s.\n", image_path);
            if (img_32bit_in) free(img_32bit_in);
            if (img_32bit_out) free(img_32bit_out); // Free if allocated before error
            if (img_8bit_out) free(img_8bit_out);   // Free if allocated before error
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
                         fprintf(stderr, "Error: Failed to allocate memory for blur filter (size %d) for image %s.\n", N, image_path);
                    }
                }
            } else { // Handle fixed-size filters
                int N = 3; // Fixed-size filters are typically 3x3
                float* filter = NULL;
                if(strcmp(filter_type, "sharpen") == 0) filter = generate_sharpen_filter();
                else if(strcmp(filter_type, "laplacian") == 0) filter = generate_laplacian_filter();
                else if(strcmp(filter_type, "sobel_x") == 0) filter = generate_sobel_x_filter();
                
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
                    fprintf(stderr, "Error: Failed to allocate memory for %s filter for image %s.\n", filter_type, image_path);
                }
            }
        }

        // Cleanup for this image
        free(img_32bit_in);
        free(img_32bit_out);
        free(img_8bit_out);
    }

    fclose(csv_file); // Close the CSV file
    printf("\nPerformance test complete. Output images have been saved to the 'Convolution Images' directory and results to 'performance_results.csv'.\n");

    return 0;
}
