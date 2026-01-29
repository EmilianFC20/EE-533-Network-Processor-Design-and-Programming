import subprocess
import re
import os
import matplotlib.pyplot as plt

EXECUTABLE_NAME = "matrix_gpu_optimized"
MATRIX_SIZES = [256, 512, 1024, 2048, 4096] 
OUTPUT_CSV = "gpu_optimized_results.csv"
OUTPUT_GRAPH = "gpu_optimized_performance_graph.png"


def run_gpu_benchmark():
    """Runs the compiled CUDA program for various matrix sizes and collects timing data."""

    if not os.path.exists(EXECUTABLE_NAME):
        print(f"Error: Executable '{EXECUTABLE_NAME}' not found. Please ensure it is compiled and in the current directory.")
        return None, None

    n_values = []
    time_values = []

    print(f"Running GPU matrix multiplication for different sizes...")

    with open(OUTPUT_CSV, "w") as f_csv:
        f_csv.write("MatrixSize,ExecutionTime(s)\n")

        for n in MATRIX_SIZES:
            print(f"Testing with N = {n}")
            result = subprocess.run(
                [f"./{EXECUTABLE_NAME}", str(n)],
                capture_output=True,
                text=True,
                check=True,
            )
            output = result.stdout
            match = re.search(r"(\d+\.\d+)\s+seconds", output)
            if match:
                time_in_seconds = float(match.group(1))
                
                # Store seconds in lists for graph/CSV
                n_values.append(n)
                time_values.append(time_in_seconds)
                
                # Write seconds to CSV
                f_csv.write(f"{n},{time_in_seconds:.4f}\n") 

                # Print in milliseconds for immediate feedback
                print(f"Time: {time_in_seconds * 1000.0:.4f} ms") 
            else:
                print(f"Could not parse time from output for N={n}: {output.strip()}")

    print(f"Done. Results saved in {OUTPUT_CSV}")
    return n_values, time_values


def create_gpu_graph(n_values, time_values_in_seconds):
    """Creates and saves a plot of the GPU benchmark results."""
    if not n_values or not time_values_in_seconds:
        print("No data to plot.")
        return
        
    print(f"\nGenerating graph and saving to {OUTPUT_GRAPH}...")
    # Convert times to milliseconds for plotting
    time_values_in_ms = [t * 1000.0 for t in time_values_in_seconds]

    plt.figure(figsize=(10, 6))
    plt.plot(n_values, time_values_in_ms, "o-", label="GPU Performance") # Plot milliseconds
    
    plt.title("GPU Matrix Multiplication Performance")
    plt.xlabel("Matrix Size (N)")
    plt.ylabel("Execution Time (milliseconds)")
    plt.grid(True, which="both", linestyle="--")
    plt.xticks(n_values, labels=[str(n) for n in n_values])
    plt.legend()
    
    plt.savefig(OUTPUT_GRAPH)
    print(f"Graph saved successfully as {OUTPUT_GRAPH}.")

if __name__ == "__main__":
    n_data, time_data = run_gpu_benchmark()
    if n_data and time_data:
        create_gpu_graph(n_data, time_data)
