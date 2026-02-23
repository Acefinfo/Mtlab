Project_path = 'E:\Matlab\Week_2';  % Define the project path
cd(Project_path);  % Change the current directory to the project path


figure;
ImgA = imread('Asset\lena-Colour.png');
imshow(ImgA);

figure;
ImgB = imread('Asset\cameraman.tif');
imshow(ImgB);

% 1. Image matrix proporties:
% The size of an image matrix is determined by its dimensions, which include the number of rows (height), 
% columns (width), and color channels (depth). For example, a color image typically has three channels (Red, Green, Blue), while 
% a grayscale image has only one channel. The size of the image matrix can be obtained using the `size()` function in MATLAB, which 
% returns the dimensions of the matrix. Understanding the size of an image matrix is crucial for various image processing tasks, such 
% as resizing, cropping, and applying filters, as it helps ensure that operations are performed correctly and efficiently.
sz = size(ImgA);
disp(["Size of Image A:", num2str(sz)]);

szimg2 = size(ImgB);  
disp(["Size of Image B:", num2str(szimg2)]);


% 2. Extracting Color Channels:
% In a color image, the three color channels (Red, Green, and Blue) are typically represented as separate 2D matrices. Each channel 
% contains intensity values for that specific color. By extracting these channels, we can analyze or manipulate them individually. 
% For example, we can enhance the red channel to make the image appear warmer or reduce the blue channel to give it a cooler tone. 
% This process is fundamental in various image processing tasks such as color correction, filtering, and feature extraction.
R = ImgA(:,:,1);
G = ImgA(:,:,2);
B = ImgA(:,:,3);

figure;
montage({R, G, B});
title("Individual color channels of image A")

% 3 Gray Scale onversion: 
% Grayscale image reduces the load by combining color chanels into intensity.
% Function : im2gray(), rgb2gray()

figure;
grayImgA = im2gray(ImgA);
imshow(grayImgA);
title("Grayscale Image A");

sizeGrayA = size(grayImgA);
disp(["Size of Grayscale Image A:", num2str(sizeGrayA)]);

imwrite(grayImgA, 'Classroom\Output\lena-Gray.png');  

% 4. Pixel Intensity Analysis:
% Pixel intensity analysis involves examining the intensity values of individual pixels in an image. This analysis can provide insights into the distribution 
% of brightness and contrast within the image. By analyzing pixel intensities, we can identify areas of interest, detect edges, and perform various image processing 
% tasks such as thresholding and segmentation. For example, we can calculate the histogram of pixel intensities to understand the overall brightness distribution or 
% apply a threshold to separate objects from the background. This type of analysis is fundamental in applications like image enhancement, object recognition, and computer vision.
% Function max, min

Red_chanel = ImgA(:,:,1);
Rmax = max(Red_chanel(:));
disp(["Maximum intensity in the Red channel:", num2str(Rmax)]);

Rmin = min(Red_chanel(:));
disp(["Minimum intensity in the Red channel:", num2str(Rmin)]);





