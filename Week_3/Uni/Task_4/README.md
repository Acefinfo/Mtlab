# JPEG Compression Implementation in MATLAB

A complete from-scratch MATLAB implementation of the JPEG lossy image compression algorithm. This project demonstrates the key stages of JPEG compression including Discrete Cosine Transform (DCT), quantization, run-length encoding, and Huffman coding.

## Project Overview

This implementation follows the standard JPEG compression pipeline:
1. **DCT (Discrete Cosine Transform)** - Convert spatial domain pixels to frequency domain
2. **Quantization** - Reduce precision of frequency components based on human visual perception
3. **Entropy Encoding** - Further compress using run-length encoding and Huffman coding

## Project Structure

### Main Script
- **`JPEG1.m`** - Main execution script that runs the entire compression pipeline on an input image

### Core Functions

#### 1. Preprocessing
- **`convert_dimensions.m`** - Pads input image dimensions to be divisible by 8 (required for 8×8 block processing)
- **`get_basis.m`** - Generates DCT basis functions for the 8×8 blocks

#### 2. Forward DCT (Spatial → Frequency Domain)
- **`image_dct.m`** - Applies DCT to entire image by processing 8×8 blocks
- **`perform_dct.m`** - Performs DCT on a single 8×8 block using pre-computed basis functions

#### 3. Quantization
- **`special_quantize.m`** - Quantizes frequency coefficients using a standard JPEG quantization table, reducing data size by eliminating less perceptually important information

#### 4. Encoding
- **`run_length_encoding.m`** - Converts 2D blocks to 1D using zigzag ordering and applies run-length encoding to exploit zero sequences
- **`transform_2Dto1D.m`** - Transforms 8×8 blocks to 1D vector using zigzag pattern (more zeros at the end)
- **`get_probabilities.m`** - Calculates symbol frequencies needed for Huffman table generation
- **`jpeg_huffman_table.m`** - Builds Huffman coding table based on symbol probabilities
- **`jpeg_huffman_encoder.m`** - Encodes symbol stream using the Huffman table

#### 5. Decoding (Decompression)
- **`jpeg_huffman_decoder.m`** - Decodes bitstream back to symbol stream using Huffman table
- **`run_length_decoding.m`** - Converts 1D encoded stream back to 2D blocks
- **`inverse_quantization.m`** - Recovers frequency coefficients by multiplying with quantization table
- **`image_idct.m`** - Applies IDCT to entire image by processing 8×8 blocks
- **`perform_idct.m`** - Performs inverse DCT on single 8×8 block
- **`transform_1Dto2D.m`** - Reverses zigzag pattern to reconstruct 2D blocks

## How It Works

### Compression Pipeline
```
Input Image → Pad Dimensions → DCT → Quantization → RLE + Zigzag → Huffman Encoding → Compressed Bitstream
```

### Decompression Pipeline
```
Compressed Bitstream → Huffman Decoding → RLE Decoding → Inverse Quantization → IDCT → Original Image
```

## Key Features

- **Block-based Processing**: Images are processed in 8×8 blocks (standard JPEG)
- **DCT Implementation**: Custom DCT using pre-computed cosine basis functions
- **JPEG Quantization Table**: Uses industry-standard quantization values that account for human vision sensitivity
- **Zigzag Ordering**: Organizes coefficients to maximally concentrate zeros for better compression
- **Huffman Coding**: Assigns variable-length codes based on symbol frequency
- **Quality Metrics**: Computes RMS error and compression ratio

## Input/Output

- **Input**: Color or grayscale images (JPG, PNG, etc.)
- **Output**: Decompressed image and compression statistics
- **Test Images**: Includes `B2DBY.jpg` and `Mona_Lisa.jpg`

## Usage

1. Open `JPEG1.m` in MATLAB
2. Modify the input image path if needed (currently set to 'B2DBY.jpg')
3. Adjust quantization table `q` for different compression levels
4. Run the script
5. View original image (Figure 1) and decompressed image (Figure 2)
6. Check console output for RMS error and compression ratio

## Performance Metrics

The script outputs:
- **RMS Error**: Root Mean Square error between original and decompressed images
- **Compression Ratio**: Percentage reduction in file size

## Technical Details

- **DCT Basis**: 8×8 matrices of cosine functions with normalized coefficients
- **Quantization Table**: Standard JPEG quantization matrix that removes high-frequency components imperceptible to human eyes
- **Run-Length Encoding**: Exploits clustering of zeros after quantization
- **Huffman Table**: Generated dynamically based on symbol statistics in the quantized image

## Notes

- This implementation prioritizes educational clarity over maximum compression efficiency
- All major JPEG components are implemented from scratch (no MATLAB built-in compression functions)
- The quantization table can be modified to trade off between file size and image quality
- Processing time depends on image size and MATLAB's computational speed
