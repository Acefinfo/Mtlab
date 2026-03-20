# Week 4 - University Image Processing Lab (MATLAB)

This README covers the contents of `E:\Matlab\Week_4\Uni` and describes all scripts and key image-processing functions used in this module. It includes usage recommendations, brief explanations, and links to tasks in each subfolder.

## 📁 Directory structure

- `1_Basics/`
  - `README.md` (module introduction and tasks)
  - `Task_1/`, `Task_2/`, `Task_3/` (exercise folders)
- `2_imtool/`
  - `Ch1_Basics_Tool.m` (imtool-based interactive exploration)
  - `README.md`
- `3_Image_Enhancement/`
  - `EnhanceImg.m` (general spatial and frequency enhancement operations)
  - `Task_4.m` (specific exercise implementation)
- `4_Gamma_Correction/`
  - `Basic_gamma.m` (gamma transform demos: `gamma < 1`, `gamma > 1`)
- `5_Image_Segmentation/`
  - `BinaryImage.m` (image thresholding and segmentation)
- `6_Noise/`
  - `Noise_Removal.m` (filtering / denoise examples)
  - `Simulating_noise.m` (add and analyze noise types)
- `Asset/` (reference images, source materials)
- `Image_/` (generated images or inputs)
- `Output/` (output images/data)

## 🚀 Quick start

1. Open MATLAB.
2. Change folder to:
   - `cd('E:\\Matlab\\Week_4\\Uni')`
3. Run a script:
   - `run('3_Image_Enhancement\\EnhanceImg.m')`
   - `run('6_Noise\\Simulating_noise.m')`
4. Inspect output figures in MATLAB figure windows and output folder.

## 🧩 Core scripts and purpose

### `2_imtool/Ch1_Basics_Tool.m`
- Demonstrates interactive exploration with `imtool`.
- Useful to inspect pixel values, zoom, and apply initial contrast adjustments manually.

### `3_Image_Enhancement/EnhanceImg.m`
- Covers filtering, sharpening, contrast, and tone adjustments.
- Good starting point to compare `histeq`, `adapthisteq`, `imsharpen`, and local contrast functions.

### `3_Image_Enhancement/Task_4.m`
- Task-specific instruction from course (likely enhanced processing pipeline).

### `4_Gamma_Correction/Basic_gamma.m`
- Shows `I_out = I_in.^gamma` for `gamma` correction.
- Use this for contrast shifts: darken (`gamma > 1`) or brighten (`gamma < 1`).

### `5_Image_Segmentation/BinaryImage.m`
- Implements threshold selection (global or Otsu)
- Output is binary mask. Base for object detection and region splitting.

### `6_Noise/Noise_Removal.m`
- Demonstrates removal using median/Gaussian filtering and maybe wavelet/ANLM.

### `6_Noise/Simulating_noise.m`
- Displays creation of noise types and effect of denoising.
- Great for before/after evaluation of `imnoise`, `imfilter`, etc.

## 🧠 Required MATLAB functions (with brief usage)

The course expects familiarity with these image-processing functions. Each item includes when/how to use.

### `imadjust`
- Adjust image intensity values or colormap.
- Usage:
  - `J = imadjust(I, [low_in; high_in], [low_out; high_out]);`
  - `J = imadjust(I);` auto-stretches to [0 1].
- When to use: global brightness/contrast stretch for low/high dynamic range gray/RGB image.

### `imadjustn`
- N-D extension of `imadjust` (volume data, RGB stack, 3D medical images).
- Usage: `J = imadjustn(I);` or with custom bounds.
- Use for volumetric normalization before segmentation.

### `imcontrast`
- Interactive contrast adjustment tool window.
- Usage: `imcontrast(h)` where `h` is image display handle.
- Use in exploratory mode for manual trimming in lab.

### `imsharpen`
- Unsharp masking sharpening.
- Usage: `J = imsharpen(I, 'Radius', r, 'Amount', a);`
- Use on slightly blurry images to enhance edges before segmentation.

### `imflatfield`
- 2-D flat-field correction, removes nonuniform illumination.
- Usage: `J = imflatfield(I, [radius]);`
- Use on microscope/telescopic images with vignetting.

### `imlocalbrighten`
- Locally brighten underexposed low-light regions.
- Usage: `J = imlocalbrighten(I, 'NeighborhoodSize', [m n]);`
- Use when brightening alone would saturate well-lit regions.

### `imreducehaze`
- Reduces atmospheric haze in naturally captured scenes.
- Usage: `J = imreducehaze(I);`
- Use for outdoor images with fog/haze, helpful for scene clarity.

### `locallapfilt`
- Fast local Laplacian filtering for edge-aware tone mapping.
- Usage: `J = locallapfilt(I, sigmaSpatial, alpha);`
- Use when you want local contrast enhancement without halos.

### `localcontrast`
- Edge-aware local contrast enhancement.
- Usage: `J = localcontrast(I);` (supports `Amount`, `Radius`).
- Use to sharpen details in texture by adjusting local contrast.

### `localtonemap`
- HDR tone mapping with local contrast enhancement.
- Usage: `J = localtonemap(I);` or `localtonemap(I, 'AdjustSaturation', s);`
- Use to render HDR scenes as LDR images with preserved local detail.

### `histeq`
- Histogram equalization for contrast enhancement.
- Usage: `J = histeq(I);` or `histeq(I, n)`.
- Use to improve visibility when intensity distribution is narrow.

### `adapthisteq`
- CLAHE (Contrast-limited adaptive histogram equalization).
- Usage: `J = adapthisteq(I, 'ClipLimit', 0.02, 'NumTiles', [8 8]);`
- Use to reduce over-amplification in homogeneous areas vs `histeq`.

### `imhistmatch`
- Match histogram of input to reference image.
- Usage: `J = imhistmatch(I, ref);`
- Use to standardize appearance across same-modality captures.

### `imhistmatchn`
- N-D extension for multi-channel or volume images.
- Usage: `J = imhistmatchn(I, ref);`
- Use for 3-D arrays (RGB or volumetric) with reference look.

### `decorrstretch`
- Decorrelation stretch for multi-spectral images.
- Usage: `J = decorrstretch(I);`
- Use to exaggerate color differences and increase separability for remote sensing.

### `stretchlim`
- Compute contrast stretch limits.
- Usage: `[low high] = stretchlim(I);` then `J = imadjust(I, [low high], [0 1]);`
- Use to derive robust thresholds automatically.

### `intlut`
- Convert integer pixel values using lookup table (LUT) to do fast mapping.
- Usage: `J = intlut(uint8(I), lut);` where `lut` is 256x1 vector.
- Use for gamma table-like transformations and custom quantization.

### `imnoise`
- Add synthetic noise to image.
- Usage examples:
  - `J = imnoise(I, 'gaussian', 0, 0.01);`
  - `J = imnoise(I, 'salt & pepper', 0.02);`
  - `J = imnoise(I, 'speckle', 0.04);`
- Use for algorithm robustness testing and denoising benchmarks.

## ✅ Suggested usage order (learning path)

1. Explore basics with `2_imtool/Ch1_Basics_Tool.m` and `imcontrast`.
2. Learn transform, stretch, and sharpen in `3_Image_Enhancement` and `4_Gamma_Correction`.
3. Try histogram methods: `histeq`, `adapthisteq`, `stretchlim`, `imhistmatch`.
4. Apply local methods: `localcontrast`, `locallapfilt`, `localtonemap`, `imlocalbrighten`.
5. Simulate noise in `6_Noise/Simulating_noise.m` using `imnoise`, then remove using filters in `Noise_Removal.m`.
6. For feature extraction and segmentation, use output from enhancement before `BinaryImage.m`.

## 📌 Practical notes

- Always convert input images to supported class (`im2double`, `uint8`, etc.) before processing.
- For color images, process channels separately where required (except functions that support RGB natively).
- Use `imshowpair(I, J, 'montage')` to compare before/after results.

---
