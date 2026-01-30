import matplotlib.pyplot as plt
import csv

RESULTS_FILE = "performance_results_cpu.csv"
OUTPUT_GRAPH = "cpu_conv_performance_graph.png"

def read_results_from_csv(filename):
    n_values = []
    time_values = []
    image_size = []
    try:
        with open(filename, 'r') as csvfile:
            reader = csv.reader(csvfile)
            header = next(reader) # Skip header row
            for row in reader:
                if len(row) == 5:
                    n_values.append(row[2] + " " + row[3] + "x" + row[3])
                    time_values.append(float(row[4]))
                    image_size.append((row[1]))
    except FileNotFoundError:
        print(f"Error: The file {filename} was not found.")
    except Exception as e:
        print(f"Error reading CSV file: {e}")
    return n_values, time_values, image_size

def create_graph(n_values, time_values, image_size):
    if not n_values or not time_values:
        print("No data to plot.")
        return

    print(f"\nGenerating graph and saving to {OUTPUT_GRAPH}...")

    fig, axes = plt.subplots(3, 4, figsize=(20, 12))
    
    points_per_plot = 3
    
    for i, ax in enumerate(axes.flat):
        start = i * points_per_plot
        end = start + points_per_plot
    
        ax.plot(
            n_values[start:end],
            time_values[start:end],
            "o-",
            label="CPU Performance"
        )
    
        ax.set_title(f"Image Size {image_size[i]}")
        ax.set_xlabel("Filter Size (n x n)")
        ax.set_ylabel("Execution Time (seconds)")
        ax.grid(True, which="both", linestyle="--")
        ax.set_xticks(n_values[start:end])
        ax.set_xticklabels([str(n) for n in n_values[start:end]])
        ax.tick_params(axis="x", rotation=45)
        ax.legend()
    
    plt.tight_layout()
    plt.savefig(OUTPUT_GRAPH)
    print(f"Graph saved successfully as {OUTPUT_GRAPH}.")

if __name__ == "__main__":
    n_data, time_data, image_size = read_results_from_csv(RESULTS_FILE)
    if n_data and time_data:
        create_graph(n_data, time_data, image_size)