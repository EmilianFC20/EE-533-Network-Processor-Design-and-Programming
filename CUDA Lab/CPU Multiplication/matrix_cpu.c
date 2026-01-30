#include <stdio.h>
#include <stdlib.h>
#include <time.h>

void matrixMultiplyCPU(float *A, float *B, float *C, int N) {
    for (int i = 0; i < N; i++) {
        for (int j = 0; j < N; j++) {
            float sum = 0.0f;
            for (int k = 0; k < N; k++) {
                sum += A[i * N + k] * B[k * N + j];
            }
            C[i * N + j] = sum;
        }
    }
}

int main(int argc, char **argv) {
    int N_values[] = {256, 512, 1024, 2048, 4096};
    int num_N_values = sizeof(N_values) / sizeof(N_values[0]);

    FILE *fp = fopen("cpu_results.csv", "w");
    if (fp == NULL) {
        printf("Error opening file cpu_results.csv\n");
        return 1;
    }
    fprintf(fp, "Matrix Size (N),Execution Time (s)\n");
    fclose(fp);

    for (int i = 0; i < num_N_values; i++) {
        int N = N_values[i];
        size_t size = (size_t)N * N * sizeof(float);

        float *A = (float *)malloc(size);
        float *B = (float *)malloc(size);
        float *C = (float *)malloc(size);

        for (int j = 0; j < N * N; j++) {
            A[j] = rand() % 100 / 100.0f;
            B[j] = rand() % 100 / 100.0f;
        }

        clock_t start = clock();
        matrixMultiplyCPU(A, B, C, N);
        clock_t end = clock();

        double elapsed = (double)(end - start) / CLOCKS_PER_SEC;
        printf("CPU execution time (N=%d): %f seconds\n", N, elapsed);

        fp = fopen("cpu_results.csv", "a");
        if (fp == NULL) {
            printf("Error opening file cpu_results.csv for appending\n");
            free(A); free(B); free(C);
            continue;
        }
        fprintf(fp, "%d,%f\n", N, elapsed);
        fclose(fp);

        free(A); free(B); free(C);
    }

    return 0;
}

