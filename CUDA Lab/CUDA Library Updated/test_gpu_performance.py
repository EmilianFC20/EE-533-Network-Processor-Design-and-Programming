import ctypes
import numpy as np
import time
import os

# --- Configuration ---
# Name of the shared library you compiled from matrix_lib_updated.cu
# or in your system's library path (LD_LIBRARY_PATH on Linux, PATH on Windows).
LIBRARY_NAME = "libmatrix_updated.so" 

# --- Load the shared library ---
try:
    # The library is now in the same directory as the script
    library_path_full = os.path.join(os.path.dirname(__file__), LIBRARY_NAME)
    lib = ctypes.CDLL(library_path_full)
except OSError:
    print(f"Error: Could not load the shared library '{LIBRARY_NAME}'.")
    print("Please ensure it is compiled and located in the correct directory.")
    print(f"Attempted to load from: {library_path_full}")
    exit(1)

print(f"Successfully loaded {LIBRARY_NAME}")

# --- Configure gpu_matrix_multiply function ---
# extern "C" void gpu_matrix_multiply(float *h_A, float *h_B, float *h_C, int N)
lib.gpu_matrix_multiply.argtypes = [
    np.ctypeslib.ndpointer(dtype=np.float32, ndim=2, flags='CONTIGUOUS'),
    np.ctypeslib.ndpointer(dtype=np.float32, ndim=2, flags='CONTIGUOUS'),
    np.ctypeslib.ndpointer(dtype=np.float32, ndim=2, flags='CONTIGUOUS'),
    ctypes.c_int
]
lib.gpu_matrix_multiply.restype = None

# --- Configure gpu_apply_convolution function ---
# extern "C" void gpu_apply_convolution(uint32_t* h_output, const uint32_t* h_input, int width, int height, const float* h_filter, int N)
lib.gpu_apply_convolution.argtypes = [
    np.ctypeslib.ndpointer(dtype=np.uint32, ndim=2, flags='CONTIGUOUS'),
    np.ctypeslib.ndpointer(dtype=np.uint32, ndim=2, flags='CONTIGUOUS'),
    ctypes.c_int,
    ctypes.c_int,
    np.ctypeslib.ndpointer(dtype=np.float32, ndim=2, flags='CONTIGUOUS'),
    ctypes.c_int
]
lib.gpu_apply_convolution.restype = None

# --- Test GPU Matrix Multiplication ---
print("\n--- Testing GPU Matrix Multiplication ---")
N_mm = 1024  # Matrix size N x N
A_mm = np.random.rand(N_mm, N_mm).astype(np.float32)
B_mm = np.random.rand(N_mm, N_mm).astype(np.float32)
C_mm = np.zeros((N_mm, N_mm), dtype=np.float32)

# Warm-up run for GPU Matrix Multiplication
C_mm_warmup = np.zeros((N_mm, N_mm), dtype=np.float32)
lib.gpu_matrix_multiply(A_mm, B_mm, C_mm_warmup, N_mm)

start_time_mm = time.perf_counter()
lib.gpu_matrix_multiply(A_mm, B_mm, C_mm, N_mm)
end_time_mm = time.perf_counter()

print(f"Matrix Multiplication (N={N_mm}) completed in {(end_time_mm - start_time_mm) * 1000:.4f} ms")

# --- Test GPU Image Convolution ---
print("\n--- Testing GPU Image Convolution ---")
width_conv = 256
height_conv = 256
N_filter = 3 # 3x3 filter

# Sample grayscale image (0-255 values), converted to uint32 for the C function
image_conv_in = np.random.randint(0, 256, size=(height_conv, width_conv), dtype=np.uint32)
image_conv_out = np.zeros((height_conv, width_conv), dtype=np.uint32)

# Sample sharpen filter (3x3) - define it in Python
sharpen_filter = np.array([
    [0, -1, 0],
    [-1, 5, -1],
    [0, -1, 0]
], dtype=np.float32)

start_time_conv = time.perf_counter()
lib.gpu_apply_convolution(image_conv_out, image_conv_in, width_conv, height_conv, sharpen_filter, N_filter)
end_time_conv = time.perf_counter()

print(f"Image Convolution (Image {width_conv}x{height_conv}, Filter {N_filter}x{N_filter}) completed in {(end_time_conv - start_time_conv) * 1000:.4f} ms")

# Optional: Print a small part of the output image
# print("Output image (top-left 5x5):")
# print(image_conv_out[:5, :5])
