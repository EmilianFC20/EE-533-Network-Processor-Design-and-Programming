import matplotlib.pyplot as plt
import csv

RESULTS_FILE = "gpu_optimized_results.csv"
OUTPUT_GRAPH = "gpu_optimized_performance_graph.png"

def read_results_from_csv(filename):
    n_values = []
    time_values = []
    try:
        with open(filename, 'r') as csvfile:
            reader = csv.reader(csvfile)
            header = next(reader) # Skip header row
            for row in reader:
                if len(row) == 2:
                    n_values.append(int(row[0]))
                    time_values.append(float(row[1]))
    except FileNotFoundError:
        print(f"Error: The file {filename} was not found.")
    except Exception as e:
        print(f"Error reading CSV file: {e}")
    return n_values, time_values

def create_gpu_graph(n_values, time_values_in_ms):
    if not n_values or not time_values_in_ms:
        print("No data to plot.")
        return
        
    print(f"\nGenerating graph and saving to {OUTPUT_GRAPH}...")

    plt.figure(figsize=(10, 6))
    plt.plot(n_values, time_values_in_ms, "o-", label="GPU Performance")
        
    plt.title("GPU Matrix Multiplication Performance")
    plt.xlabel("Matrix Size (N)")
    plt.ylabel("Execution Time (milliseconds)")
    plt.grid(True, which="both", linestyle="--")
    plt.xticks(n_values, labels=[str(n) for n in n_values])
    plt.legend()
        
    plt.savefig(OUTPUT_GRAPH)
    print(f"Graph saved successfully as {OUTPUT_GRAPH}.")

if __name__ == "__main__":
    n_data, time_data = read_results_from_csv(RESULTS_FILE)
    if n_data and time_data:
        create_gpu_graph(n_data, time_data)