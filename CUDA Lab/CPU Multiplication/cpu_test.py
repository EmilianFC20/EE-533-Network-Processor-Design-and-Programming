import subprocess
import re
import os
import matplotlib.pyplot as plt

EXECUTABLE_NAME = "matrix_cpu"
MATRIX_SIZES = [256, 512, 1024, 2048, 4096] 
OUTPUT_CSV = "cpu_results.csv"
OUTPUT_GRAPH = "cpu_performance_graph.png"


def run_simple_benchmark():
    """Runs the compiled C program for various matrix sizes and collects timing data."""

    if not os.path.exists(EXECUTABLE_NAME):
        print(f"Error: Executable '{EXECUTABLE_NAME}' not found. Please ensure it is compiled and in the current directory.")
        return None, None

    n_values = []
    time_values = []

    print("Running matrix multiplication for different sizes...")

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
            # Regex to find the floating point number for time
            match = re.search(r"(\d+\.\d+)\s+seconds", output)
            if match:
                time = float(match.group(1))
                print(f"Time: {time:.4f} seconds")
                f_csv.write(f"{n},{time}\n")
                n_values.append(n)
                time_values.append(time)
            else:
                print(f"Could not parse time from output for N={n}: {output.strip()}")

    print(f"Done. Results saved in {OUTPUT_CSV}")
    return n_values, time_values


def create_graph(n_values, time_values):
    """Creates and saves a plot of the benchmark results."""
    if not n_values or not time_values:
        print("No data to plot.")
        return
        
    print(f"\nGenerating graph and saving to {OUTPUT_GRAPH}...")

    plt.figure(figsize=(10, 6))
    # Plot CPU data
    plt.plot(n_values, time_values, "o-", label="CPU Performance")
    
    plt.title("Matrix Multiplication Performance")
    plt.xlabel("Matrix Size (N)")
    plt.ylabel("Execution Time (seconds)")
    plt.grid(True, which="both", linestyle="--")
    plt.xticks(n_values, labels=[str(n) for n in n_values])
    plt.legend()
    
    plt.savefig(OUTPUT_GRAPH)
    print(f"Graph saved successfully as {OUTPUT_GRAPH}.")

if __name__ == "__main__":
    n_data, time_data = run_simple_benchmark()
    if n_data and time_data:
        create_graph(n_data, time_data)
