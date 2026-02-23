# Week 1 — MATLAB Basics

## Overview

This folder collects the Week 1 MATLAB exercises: basic commands, arithmetic and matrix operations, and image reading/processing and saving. The scripts demonstrate how to write and run simple MATLAB scripts, manipulate matrices, and perform common image-processing steps (read, display, convert, resize, rotate, enhance, add noise, filter, and save).

## How to use

- Open MATLAB and set the Current Folder to this directory (Matlab/Week_1).
- Run any script by opening it in the Editor and pressing F5 or by typing `run('filename')` in the Command Window.
- Example: to run the introductory script, run `intro` or open [intro.m](intro.m).

## Files and short descriptions

- **[intro.m](intro.m)**: Introductory script showing basic MATLAB commands, variable assignment, display, and the example equation Y = (A*B) + (C - D)/X. Use this file to learn how to write and run a script.
- **[Basic_Math_Opera.m](Basic_Math_Opera.m)**: Demonstrations of scalar arithmetic operations (addition, subtraction, multiplication, division, exponentiation) and short exercises on operator precedence.
- **[Matrics_operation.m](Matrics_operation.m)**: Matrix creation and matrix operations: addition, subtraction, multiplication, transpose, determinant, inverse, and eigenvalues.
- **[Basics_image.m](Basics_image.m)**: Basic image I/O and display: `imread`, `imshow`, `size`, `class`, and `imfinfo` usage examples.
- **[Image_processing.m](Image_processing.m)**: General image manipulation examples such as cropping, adding images, blending, and other transformations.
- **[image_enhancement.m](image_enhancement.m)**: Image enhancement techniques: convert to grayscale, `imadjust`, histogram equalization (`histeq`), noise addition and removal (`imnoise`, `medfilt2`).
- **[Saving_exporting.m](Saving_exporting.m)**: Examples showing how to save images with `imwrite` and export MATLAB variables or image data to `.mat` files using `save`.
- **[Asset/](Asset/)**: Folder for input images or support files (example images such as `Asset1.jpg` and `Asset2.jpg`).
- **[Output/](Output/)**: Folder for generated outputs (for example, `image_data.mat` and `CustomColored.png`).

## Sample Images

Here are some sample images used in the scripts:

![Asset1](Asset/Asset1.jpg)

![Asset2](Asset/Asset2.jpg)

![Custom Colored Output](Output/CustomColored.png)

## Detailed per-file explanation and brief intros

- **[intro.m](intro.m)**
  - Intro: teaches the MATLAB UI, the Command Window, and how to write/run scripts.
  - Contents: variable assignment (a, b, c), `disp()`, `clc`, and the task script for computing `Y = (A * B) + (C - D) / X` with example values.
  - Run: open the file in the Editor and press F5 or run `intro` in Command Window.

- **[Basic_Math_Opera.m](Basic_Math_Opera.m)**
  - Intro: shows basic scalar math operations and the effect of operator precedence.
  - Contents: examples for `+`, `-`, `*`, `/`, `^`, and combined expressions. Exercises ask you to compute compound expressions and observe results.

- **[Matrics_operation.m](Matrics_operation.m)**
  - Intro: demonstrates building matrices and performing matrix algebra.
  - Contents: example 3x3 matrices `A` and `B`, `A + B`, `A - B`, `A * B`, `det(A)`, `inv(A)`, `A'`, and `eig(A)` to illustrate common matrix functions.

- **[Basics_image.m](Basics_image.m)**
  - Intro: reading and inspecting images.
  - Contents: `imread('...')`, `imshow()`, `size()`, `class()`, `imfinfo()` and a quick check to detect grayscale vs RGB images.
  - Example output: ![Sample Image Display](Asset/Asset1.jpg)

- **[Image_processing.m](Image_processing.m)**
  - Intro: basic spatial operations and image composition.
  - Contents: examples for changing working directory, cropping (`imcrop`), adding two images (element-wise) and blending images (weighted sum with `imlincomb` or simple arithmetic), plus small workflows for combining images of same size.

- **[image_enhancement.m](image_enhancement.m)**
  - Intro: enhancement and filtering techniques.
  - Contents: `rgb2gray`, `imresize`, `imrotate`, `imadjust`, `histeq`, `imnoise`, and `medfilt2` to demonstrate contrast improvement and noise reduction.

- **[Saving_exporting.m](Saving_exporting.m)**
  - Intro: saving and exporting data.
  - Contents: `imwrite` for images and `save` for MATLAB variables to `.mat` files.

- **[Extra_week1.m](Extra_week1.m)**
  - Additional exercises and examples for Week 1.

## References

For more information on MATLAB, refer to the [MATLAB Documentation](https://www.mathworks.com/help/matlab/).

- **Matlab/Week_1/Saving_exporting.m**
  - Intro: how to persist results and export images/data.
  - Contents: `imwrite(filtered_img, 'filtered_lena.png')` and `save('image_data.mat','filtered_img')` examples.

## Quick example commands

Basic variables and display (Command Window or script):

```matlab
a = 5;
b = 10;
c = a + b;
disp(c);
clc;
```

Equation example (from tasks) — set values and compute Y:

```matlab
A = 2; B = 3; C = 10; D = 4; X = 2;
Y = (A * B) + (C - D) / X;
disp(Y);
```

Matrix examples:

```matlab
A = [1 2 3; 4 5 6; 7 8 9];
B = [9 8 7; 6 5 4; 3 2 1];
C = A + B;
E = A * B;   % matrix multiplication
det_A = det(A);
inv_A = inv(A);
eig_A = eig(A);
```

Image I/O and basic ops:

```matlab
img = imread('Asset/lena.png');
imshow(img); title('Original Image');
gray_img = rgb2gray(img);
resized = imresize(img,0.5);
rot = imrotate(img,45);
adjusted = imadjust(gray_img);
eq_img = histeq(gray_img);
noisy = imnoise(gray_img,'salt & pepper',0.05);
filtered = medfilt2(noisy);
imwrite(filtered,'Output/filtered_lena.png');
save('Output/image_data.mat','filtered');
```

## References (MathWorks docs)

- General MATLAB: https://www.mathworks.com/help/matlab/ — Comprehensive MATLAB documentation and getting-started guides; good first stop for general usage, environment overview, and tutorials.
- `disp`: https://www.mathworks.com/help/matlab/ref/disp.html — Describes `disp()` for printing values and arrays to the Command Window without variable names.
- `clc`: https://www.mathworks.com/help/matlab/ref/clc.html — Clears the Command Window; useful to clean output between script runs.
- `imread`: https://www.mathworks.com/help/matlab/ref/imread.html — Reads image files into MATLAB arrays; supports common formats like PNG, JPG, TIFF.
- `imshow`: https://www.mathworks.com/help/images/ref/imshow.html — Displays image arrays in a figure window and accepts display options (scaling, colormap).
- `rgb2gray`: https://www.mathworks.com/help/matlab/ref/rgb2gray.html — Converts RGB images to grayscale by eliminating color information while preserving luminance.
- `imresize`: https://www.mathworks.com/help/images/ref/imresize.html — Resizes images using various interpolation methods (nearest, bilinear, bicubic).
- `imrotate`: https://www.mathworks.com/help/images/ref/imrotate.html — Rotates images by a specified angle and handles output size and background fill.
- `imadjust`: https://www.mathworks.com/help/images/ref/imadjust.html — Adjusts image intensity values to enhance contrast; useful for brightness/contrast tuning.
- `histeq`: https://www.mathworks.com/help/images/ref/histeq.html — Performs histogram equalization to improve contrast by redistributing intensity values.
- `imnoise`: https://www.mathworks.com/help/images/ref/imnoise.html — Adds different types of noise (Gaussian, salt & pepper) to images for testing filters and robustness.
- `medfilt2`: https://www.mathworks.com/help/images/ref/medfilt2.html — Applies a 2-D median filter to remove impulse noise while preserving edges.
- `imwrite`: https://www.mathworks.com/help/matlab/ref/imwrite.html — Saves image arrays to files in various formats and lets you control compression/quality.
- `save`: https://www.mathworks.com/help/matlab/ref/save.html — Saves workspace variables to `.mat` files for later reuse or sharing.
- `det`: https://www.mathworks.com/help/matlab/ref/det.html — Computes the determinant of a square matrix; useful in linear algebra checks.
- `inv`: https://www.mathworks.com/help/matlab/ref/inv.html — Computes matrix inverse; use with caution on singular or ill-conditioned matrices.
- `eig`: https://www.mathworks.com/help/matlab/ref/eig.html — Computes eigenvalues (and optionally eigenvectors) of a matrix; used in many linear algebra analyses.

## Summary

Week 1 provides a hands-on introduction to MATLAB basics: writing and running scripts, basic scalar and matrix math, and an applied image-processing pipeline (read → inspect → convert → enhance → filter → save). Use the linked scripts to explore the examples, modify values, and extend the exercises (cropping, blending, changing noise levels, etc.).

If you want, I can also:
- run quick checks on each script for obvious syntax errors,
- create a small runner script that executes the main examples in sequence, or
- add inline comments inside each .m file to document specific lines.
