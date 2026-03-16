% Inhance the image constrast by histogram equalization


%% Setting up the path
PATH = "E:\Matlab\Week_4";
cd(PATH);

%% Reading the image path and sisplaying thie image
img1 = imread("Extra\Asset\image1.jpg");
imshow(img1);
title("Original image")

img1_gray = rgb2gray(img1);
figure;
subplot(1,2,1);
imshow(img1)

subplot(1,2,2);
imshow(img1_gray);

%% Displaying the histogram of the grayscale image.
figure;
imhist(img1_gray);

%% Applying histogram equiliation to the gray scale image.

img1_eq = histeq(img1_gray);

figure;
subplot(1,2,1);
imshow(img1_gray);
title("Grayscale image")

subplot(1,2,2);
imshow(img1_eq);
title("Histogram equalized image")

%% Changing image to Rgb and displaying the image

R = img1(:,:,1);
G = img1(:,:,2);
B = img1(:,:,3);

R_eq = histeq(R);
G_eq = histeq(G);
B_eq = histeq(B);

img_rgb_eq = cat(3,R_eq,G_eq,B_eq);

figure;
subplot(1,2,1);
imshow(img1);
title("Original RGB Image");

subplot(1,2,2);
imshow(img1_eq);
title("Histogram Equalized RGB Image");


%% Using HSV color space to enhance the constrast of the images
hsv_img = rgb2hsv(img1);
hsv_img(:,:,3) = histeq(hsv_img(:,:,3));
img_hsv_eq = hsv2rgb(hsv_img);

figure;
subplot(1,3,1);
imshow(img1);
title("Original RGB Image");

subplot(1,3,2);
imshow(img_rgb_eq);
title("Histogram Equilization on RGB channels");

subplot(1,3,3);
imshow(img_hsv_eq);
title("Histogram Equilization on Hsv channels");



