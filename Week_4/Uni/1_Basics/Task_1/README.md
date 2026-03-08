# Task 1: Histogram Analysis

This task demonstrates how to load images, convert them to grayscale, display them, and plot their histograms using MATLAB.

## Images Used

The following images from the Asset folder are used in this task:

![First Image](../../Asset/rec1.PNG)

![Second Image](../../Asset/rec2.PNG)

## Code Description

The MATLAB script `Ch1_histogram.m` performs the following steps:

1. Sets the project directory to the Task_1 folder.
2. Changes the current working directory to the project folder.
3. Loads two images: `rec1.PNG` and `rec2.PNG` from the Asset folder.
4. Converts both images from RGB (color) to grayscale for intensity analysis.
5. Displays the two grayscale images side by side in a figure window.
6. Plots the histograms of the pixel intensities for both images, showing the distribution from 0 (black) to 255 (white).
7. Adjusts the contrast of the first image using automatic contrast stretching to enhance visibility.
8. Displays the original and contrast-adjusted first images side by side.
9. Plots the histograms of the original and adjusted first image for comparison.

## Functions Used

The script uses the following MATLAB functions:

- `cd(path)`: Changes the current working directory to the specified path, ensuring the script runs from the correct folder.
- `imread(filename)`: Reads an image file into a matrix that MATLAB can process.
- `rgb2gray(rgb)`: Converts a color (RGB) image to a grayscale image by removing color information and keeping only intensity values.
- `figure`: Creates a new figure window for displaying plots or images.
- `subplot(m,n,p)`: Divides the figure into a grid (m rows, n columns) and selects the p-th subplot for the next plot.
- `imshow(I)`: Displays an image matrix in the current axes.
- `title(str)`: Adds a title to the current plot or image display.
- `imhist(I)`: Computes and displays a histogram showing the distribution of pixel intensities in the image.
- `imadjust(I)`: Automatically adjusts the contrast of an image by stretching the intensity range to improve visibility.
- `imshowpair(A,B,method)`: Displays two images side by side (using "montage" method) for easy comparison.

This task helps understand how histograms represent the frequency of pixel intensities in an image, which is useful for image processing tasks like contrast adjustment and segmentation.

## Running the Script

To run this script in MATLAB:

1. Open MATLAB.
2. Navigate to the Task_1 folder.
3. Run `Ch1_histogram.m`.

The script will display three figure windows:
- One showing the two grayscale images side by side.
- One showing the histograms of the two images.
- One showing the original and contrast-adjusted first image side by side.
- One showing the histograms of the original and adjusted first image for comparison.