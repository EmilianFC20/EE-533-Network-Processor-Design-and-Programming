#include <stdio.h>
#include <stdlib.h>
#include <cuda_runtime.h>
#include <cublas_v2.h> // For cuBLAS functions

// Helper function for CUDA error checking
void checkCudaError(cudaError_t err, const char *msg) {
    if (err != cudaSuccess) {
        fprintf(stderr, "CUDA Error: %s: %s\n", msg, cudaGetErrorString(err));
        exit(EXIT_FAILURE);
    }
}

// Helper function for cuBLAS error checking
void checkCublasError(cublasStatus_t status, const char *msg) {
    if (status != CUBLAS_STATUS_SUCCESS) {
        fprintf(stderr, "cuBLAS Error: %s\n", msg);
        exit(EXIT_FAILURE);
    }
}

int main(int argc, char **argv) {
    int N_values[] = {256, 512, 1024, 2048, 4096};
    int num_N_values = sizeof(N_values) / sizeof(N_values[0]);

    FILE *fp = fopen("gpu_cublas_results.csv", "w");
    if (fp == NULL) {
        printf("Error opening file gpu_cublas_results.csv\n");
        return 1;
    }
    fprintf(fp, "Matrix Size (N),Execution Time (ms)\n");
    fclose(fp);

    for (int j = 0; j < num_N_values; j++) {
        int N = N_values[j];
        size_t size = (size_t)N * N * sizeof(float);

        // Allocate host memory
        float *A = (float *)malloc(size);
        float *B = (float *)malloc(size);
        float *C = (float *)malloc(size);

        for (int i = 0; i < N * N; i++) {
            A[i] = rand() / (float)RAND_MAX;
            B[i] = rand() / (float)RAND_MAX;
        }

        // Allocate device memory
        float *d_A, *d_B, *d_C;
        checkCudaError(cudaMalloc((void **)&d_A, size), "Malloc d_A");
        checkCudaError(cudaMalloc((void **)&d_B, size), "Malloc d_B");
        checkCudaError(cudaMalloc((void **)&d_C, size), "Malloc d_C");

        // Copy data from host to device
        checkCudaError(cudaMemcpy(d_A, A, size, cudaMemcpyHostToDevice), "Memcpy A");
        checkCudaError(cudaMemcpy(d_B, B, size, cudaMemcpyHostToDevice), "Memcpy B");

        // --- cuBLAS Initialization ---
        cublasHandle_t handle;
        checkCublasError(cublasCreate(&handle), "cublasCreate");

        // --- GEMM Parameters ---
        // C = alpha * op(A) * op(B) + beta * C
        const float alpha = 1.0f;
        const float beta = 0.0f;

        // Warm up cuBLAS calls
        checkCublasError(cublasSgemm(handle, 
                                     CUBLAS_OP_N, CUBLAS_OP_N, 
                                     N, N, N, 
                                     &alpha, 
                                     d_B, N, 
                                     d_A, N, 
                                     &beta, 
                                     d_C, N), "cublasSgemm warm-up 1");
        checkCublasError(cublasSgemm(handle, 
                                     CUBLAS_OP_N, CUBLAS_OP_N, 
                                     N, N, N, 
                                     &alpha, 
                                     d_B, N, 
                                     d_A, N, 
                                     &beta, 
                                     d_C, N), "cublasSgemm warm-up 2");
        cudaDeviceSynchronize();

        cudaEvent_t start, stop;
        checkCudaError(cudaEventCreate(&start), "Create start event");
        checkCudaError(cudaEventCreate(&stop), "Create stop event");

        checkCudaError(cudaEventRecord(start), "Record start");

        checkCublasError(cublasSgemm(handle, 
                                     CUBLAS_OP_N, CUBLAS_OP_N, 
                                     N, N, N, 
                                     &alpha, 
                                     d_B, N, // B is first
                                     d_A, N, // A is second
                                     &beta, 
                                     d_C, N), "cublasSgemm");
        
        checkCudaError(cudaEventRecord(stop), "Record stop");
        checkCudaError(cudaEventSynchronize(stop), "Synchronize stop");

        float milliseconds = 0;
        checkCudaError(cudaEventElapsedTime(&milliseconds, start, stop), "Elapsed time");

        // Copy result from device to host
        checkCudaError(cudaMemcpy(C, d_C, size, cudaMemcpyDeviceToHost), "Memcpy C");

        printf("cuBLAS execution time (N=%d): %f milliseconds\n", N, milliseconds);

        fp = fopen("gpu_cublas_results.csv", "a");
        if (fp == NULL) {
            printf("Error opening file gpu_cublas_results.csv for appending\n");
            free(A); free(B); free(C);
            continue;
        }
        fprintf(fp, "%d,%f\n", N, milliseconds);
        fclose(fp);

        // --- Cleanup ---
        checkCublasError(cublasDestroy(handle), "cublasDestroy");
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