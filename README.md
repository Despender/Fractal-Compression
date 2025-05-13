# Fractal-Compression
I decided to make a program for fractal image compression for a math paper

# Explanation
The program uses fractal compression, which is based on the idea that parts of an image can be represented by transformations of other parts. It works by finding self-similarities within the image and encoding them.

Compression Process:
The image is divided into two types of blocks:
Range blocks: Smaller blocks (e.g., 4x4 pixels).
Domain blocks: Larger blocks (e.g., 8x8 pixels)
For each range block, the program searches for the best matching domain block, calculates transformation coefficients (scaling and offset) and stores these coefficients in the compressed file.

Decompression Process:
Starts with a blank image. Iteratively applies the stored transformations.
Each iteration refines the image quality and after 10 iterations (or specified number), the image should be reconstructed.

Key Components:
FindCoefficients: Finds the best matching domain block for each range block
Metrics::DistanceClass: Calculates how well a domain block matches a range block
Shift: Calculates the offset needed to match blocks
File Structure:

Input: BMP image file
Output: Two files
Compressed file: Contains transformation coefficients
Decompressed file: The reconstructed image

Parameters:
Block size (e.g., 4): Size of range blocks
Number of iterations (e.g., 10): How many times to refine the decompressed image

Performance:
Compression is slower because it needs to search for matches
Decompression is faster but requires multiple iterations
The program measures and displays timing for both processes

This is a lossy compression method, meaning the decompressed image won't be exactly the same as the original, but it should be visually similar. The quality depends on the block size and number of iterations.

# Examples
