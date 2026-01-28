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

// No custom kernel needed when using cuBLAS

int main(int argc, char **argv) {
    int N = (argc > 1) ? atoi(argv[1]) : 1024; // allow matrix size as input
    size_t size = N * N * sizeof(float);

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

    cudaEvent_t start, stop;
    checkCudaError(cudaEventCreate(&start), "Create start event");
    checkCudaError(cudaEventCreate(&stop), "Create stop event");

    checkCudaError(cudaEventRecord(start), "Record start");
    
    // --- cuBLAS sgemm call ---
    // This performs the matrix multiplication: C = A * B
    // Note on matrix ordering: cuBLAS assumes column-major format (like Fortran).
    // Since our matrices are row-major (standard in C), computing C=A*B in row-major
    // is equivalent to C_transpose = B_transpose * A_transpose in column-major.
    // The simplest way to achieve this with cuBLAS is to switch the order of A and B
    // in the function call.
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

    printf("cuBLAS execution time (N=%d): %f seconds\n", N, milliseconds / 1000.0f);

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

    return 0;
}