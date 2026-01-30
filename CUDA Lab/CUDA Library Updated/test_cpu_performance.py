import numpy as np
import time
import os

def cpu_matrix_multiply(A, B):
    """Performs CPU matrix multiplication using NumPy."""
    return A @ B

def cpu_convolution(image, kernel):
    """
    Performs 2D convolution on the CPU using NumPy.
    Assumes image and kernel are 2D numpy arrays.
    Output data type matches input (uint32).
    """
    kernel_flipped = np.flipud(np.fliplr(kernel))

    image_h, image_w = image.shape
    kernel_h, kernel_w = kernel_flipped.shape
    
    # Calculate padding needed to ensure output size is the same as input
    pad_h = kernel_h // 2
    pad_w = kernel_w // 2

    # Pad the image. 'edge' mode extends the values at the edge for a more realistic image processing boundary.
    padded_image = np.pad(image, ((pad_h, pad_h), (pad_w, pad_w)), mode='edge').astype(np.int64) # Use int64 for sum to prevent overflow
    
    output = np.zeros_like(image, dtype=np.uint32)

    # Iterate over each pixel in the output image (excluding borders that couldn't fit the filter)
    for r in range(image_h):
        for c in range(image_w):
            # Extract the region of interest from the padded image
            # This region corresponds to the area under the kernel
            region = padded_image[r:r + kernel_h, c:c + kernel_w]
            
            # Perform element-wise multiplication and sum
            # The result is cast to uint32, matching the C code's intermediate uint32 output
            output[r, c] = np.sum(region * kernel_flipped)
            
    return output

if __name__ == "__main__":
    # --- Configuration for comparison ---
    N_mm = 1024  # Matrix size N x N
    width_conv = 256
    height_conv = 256
    N_filter = 3 # 3x3 filter

    # --- Test CPU Matrix Multiplication ---
    print("--- Testing CPU Matrix Multiplication (NumPy) ---")
    A_mm = np.random.rand(N_mm, N_mm).astype(np.float32)
    B_mm = np.random.rand(N_mm, N_mm).astype(np.float32)
    
    start_time_mm = time.perf_counter()
    C_mm = cpu_matrix_multiply(A_mm, B_mm)
    end_time_mm = time.perf_counter()
    
    print(f"Matrix Multiplication (N={N_mm}) completed in {(end_time_mm - start_time_mm) * 1000:.4f} ms")

    # --- Test CPU Image Convolution ---
    print("\n--- Testing CPU Image Convolution (NumPy) ---")
    # Sample grayscale image (0-255 values), converted to uint32
    image_conv_in = np.random.randint(0, 256, size=(height_conv, width_conv), dtype=np.uint32)
    
    # Sample sharpen filter (3x3) - define it in Python
    sharpen_filter = np.array([
        [0, -1, 0],
        [-1, 5, -1],
        [0, -1, 0]
    ], dtype=np.float32)

    start_time_conv = time.perf_counter()
    image_conv_out = cpu_convolution(image_conv_in, sharpen_filter)
    end_time_conv = time.perf_counter()
    
    print(f"Image Convolution (Image {width_conv}x{height_conv}, Filter {N_filter}x{N_filter}) completed in {(end_time_conv - start_time_conv) * 1000:.4f} ms")
