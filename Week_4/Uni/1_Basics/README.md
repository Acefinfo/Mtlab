# 1_Basics: Image Processing Fundamentals

This folder contains the basic tasks for learning image processing concepts in MATLAB, focusing on histograms, contrast adjustment, and image enhancement techniques.

## Overview

Image processing involves manipulating digital images to improve their quality or extract useful information. This section covers fundamental operations like histogram analysis and image adjustments.

## Understanding Histograms

In the image processing context, the histogram of an image refers to a histogram of the pixel intensity values (value of pixel). The pixel intensity value histogram is a graph showing the number of pixels in an image at each different intensity value found in that image. For example, an 8-bit grayscale image has 256 different possible intensities per a pixel, and so the histogram will graphically display 256 numbers showing the distribution of pixels amongst those grayscale values. Colour images also can have Histograms. They can be either individual histograms of red, green and blue channels, or a 3-D histogram can be produced, with the three axes representing the red, blue and green channels, and brightness at each point representing the pixel count.

To generate a histogram, the image is scanned and a running count of the number of pixels found at each intensity value is kept. Histograms plots how many times (frequency) each intensity value in an image occurs. Figure2 shows an Example of a grayscale image with 256 distinct gray levels (8 bits), and its Histogram, which shows frequency (how many times) each gray level occurs.

Figure2. A gray-scale image and its histogram

An intensity histogram separates pixels into bins based on their intensity values. Dark images, for example, have many pixels binned in the low end of the histogram (towards 0). Bright regions have pixels binned at the high end of the histogram (towards 255). The histogram often suggests where simple adjustments can be made to improve the definition of image features.

Now let's go back to our first example, in Figure 1. In Figure 1, the text on the receipt image is of high importance to us. Receipt images should have good contrast so that the text stands out from the paper background.

## Tasks Overview

### Task 1: Histogram Analysis
- Load images and convert to grayscale.
- Display images and their histograms.
- Adjust contrast and compare histograms.
- **File**: [Task_1/Ch1_histogram.m](Task_1/Ch1_histogram.m)
- **README**: [Task_1/README.md](Task_1/README.md)

### Task 2: Image Brightness Adjustment
- Load RGB images and apply brightness enhancement.
- Save and display adjusted images.
- **File**: [Task_2/Ch1_Adjusting_img.m](Task_2/Ch1_Adjusting_img.m)
- **README**: [Task_2/README.md](Task_2/README.md)

### Task 3: Comparing All Images (RGB and Grayscale Adjustments)
- Perform both brightness and contrast adjustments.
- Compare original and adjusted images.
- **File**: [Task_3/Ch_1_Comparing_all_images.m](Task_3/Ch_1_Comparing_all_images.m)
- **README**: [Task_3/README.md](Task_3/README.md)

## Key Functions Used

The following MATLAB functions are used across the tasks:

- `cd(path)`: Changes the current working directory.
- `imread(filename)`: Reads an image from a file.
- `rgb2gray(rgb)`: Converts RGB image to grayscale.
- `figure`: Creates a new figure window.
- `subplot(m,n,p)`: Creates subplots in a figure.
- `imshow(I)`: Displays an image.
- `title(str)`: Sets the title of a plot.
- `imhist(I)`: Displays the histogram of an image.
- `imadjust(I)`: Adjusts image contrast by stretching intensity values.
- `imshowpair(A,B,method)`: Displays two images side by side (e.g., "montage").
- `imlocalbrighten(I, amount)`: Enhances brightness in darker areas of an RGB image.
- `imwrite(I, filename)`: Saves an image to a file.

## Enhance Images: imhist (Histogram); imadjust (Adjust intensity)

In MATLAB, "imhist" function shows the intensity Histogram of an image.
```
imhist(I)
```
Open MATLAB, and browse to the MATLAB folder, where you can see a copy of rec1.PNG and rec2.PNG.

**TASK1**: From last week, read both images in MATLAB and then try to perform Histogram Function on both of them, record your findings.

You should have identified that the intensity histogram of "rec2.png" shows lower contrast between the text and the background. Most of the dark pixels have intensity values around 100, and not many bright pixels have intensity values above 200. That means the contrast is about half of what it could be if the image used the full intensity range (0 to 255).

Increasing image contrast brightens light pixels and augments dark pixels. You can use the "imadjust" function to adjust the contrast of a grayscale image automatically.
```
Aadj = imadjust(A);
```
imadjust(I), increases the contrast of the image I by mapping the values of the input intensity image to new values such that, by default, 1% of the data is saturated at low and high intensities of the input data.

**TASK2**. Adjust the contrast of rec2 and save the result in rec2Adj. Display rec2 and rec2Adj side-by-side using the imshowpair function with the "montage" option.
Hint: (You need to first convert the RGB image to grayscale).

To adjust the contrast of a colour image "imlocalbrighten" function can be used.

**TASK3**. Try using imlocalbrighten on the colour image rec2 and call it rec2adjCol, try to display rec2 and rec2adjCol side-by-side.

Use MATLAB help to find out more about "imlocalbrighten" function.

## Running the Tasks

1. Open MATLAB.
2. Navigate to the `1_Basics` folder.
3. Run the scripts in each Task folder as described in their respective READMEs.
4. Observe the histograms, adjustments, and comparisons.

## Purpose

These tasks teach the basics of image processing: analyzing pixel distributions via histograms, adjusting contrast for better visibility, and enhancing brightness in color images. This is essential for applications like document scanning, medical imaging, and computer vision.