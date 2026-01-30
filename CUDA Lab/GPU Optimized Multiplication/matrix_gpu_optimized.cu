#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <cuda_runtime.h>

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

int main(int argc, char **argv) {
    int N_values[] = {256, 512, 1024, 2048, 4096};
    int num_N_values = sizeof(N_values) / sizeof(N_values[0]);

    FILE *fp = fopen("gpu_optimized_results.csv", "w");
    if (fp == NULL) {
        printf("Error opening file gpu_optimized_results.csv\n");
        return 1;
    }
    fprintf(fp, "Matrix Size (N),Execution Time (ms)\n");
    fclose(fp);

    for (int j = 0; j < num_N_values; j++) {
        int N = N_values[j];
        size_t size = (size_t)N * N * sizeof(float);

        float *A = (float *)malloc(size);
        float *B = (float *)malloc(size);
        float *C = (float *)malloc(size);

        for (int i = 0; i < N * N; i++) {
            A[i] = rand() % 100 / 100.0f;
            B[i] = rand() % 100 / 100.0f;
        }

        float *d_A, *d_B, *d_C;
        cudaMalloc((void **)&d_A, size);
        cudaMalloc((void **)&d_B, size);
        cudaMalloc((void **)&d_C, size);

        cudaMemcpy(d_A, A, size, cudaMemcpyHostToDevice);
        cudaMemcpy(d_B, B, size, cudaMemcpyHostToDevice);

        dim3 threadsPerBlock(16, 16);
        dim3 blocksPerGrid(
            (N + threadsPerBlock.x - 1) / threadsPerBlock.x,
            (N + threadsPerBlock.y - 1) / threadsPerBlock.y
        );

        // Warm up kernel launch
        matrixMultiplyTiled<<<blocksPerGrid, threadsPerBlock>>>(d_A, d_B, d_C, N);
        matrixMultiplyTiled<<<blocksPerGrid, threadsPerBlock>>>(d_A, d_B, d_C, N);
        cudaDeviceSynchronize();

        cudaEvent_t start, stop;
        cudaEventCreate(&start);
        cudaEventCreate(&stop);

        cudaEventRecord(start);
        matrixMultiplyTiled<<<blocksPerGrid, threadsPerBlock>>>(d_A, d_B, d_C, N);
        cudaEventRecord(stop);

        cudaEventSynchronize(stop);

        float milliseconds = 0;
        cudaEventElapsedTime(&milliseconds, start, stop);

        cudaMemcpy(C, d_C, size, cudaMemcpyDeviceToHost);

        printf("GPU execution time (N=%d): %f milliseconds\n", N, milliseconds);

        fp = fopen("gpu_optimized_results.csv", "a");
        if (fp == NULL) {
            printf("Error opening file gpu_optimized_results.csv for appending\n");
            free(A); free(B); free(C);
            continue;
        }
        fprintf(fp, "%d,%f\n", N, milliseconds);
        fclose(fp);

        /* Cleanup */
        cudaEventDestroy(start);
        cudaEventDestroy(stop);
        cudaFree(d_A);
        cudaFree(d_B);
        cudaFree(d_C);
        free(A);
        free(B);
        free(C);
    }

    return 0;
}