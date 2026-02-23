% Scenario: Surveillance Lighting Analysis
% You are working on a surveillance system where color information is less important than lighting conditions (Luminance). However, you need to verify that converting 
% color spaces does not lose critical brightness data. You are also tasked with checking if HSV space provides better color separation for identifying specific objects.

% Setting path for the the terminal
Project_path = 'E:\Matlab\Week_2';  
cd(Project_path);  

% 1. Loading the images
ImgA = imread('Asset\lena-Colour.png');
ImgB = imread('Asset\cameraman.tif');

%  2. Color space conversion

% Convert the image from RGB to YCbCr
figure;
ybcrImageA = rgb2ycbcr(ImgA);
imshow(ybcrImageA);
title("Image A in YCbCr color space");
imwrite(ybcrImageA, 'Classroom\Output\lena-YCbCr.png');

figure;
imshowpair(ImgA, ybcrImageA, "montage");
title('Comparison of Image A in RGB and YCbCr color spaces');

% Convert the image from RGB to HSV
figure;
hsvImageA = rgb2hsv(ImgA);
imshow(hsvImageA);
title("Image A in HSV color space");
colorbar;
imwrite(hsvImageA, 'Classroom\Output\lena-HSV.png');

figure;
imshowpair(ImgA, hsvImageA, "montage");
title('Comparison of Image A in RGB and HSV color spaces');
colorbar;

% 3. Visualization:

Y_Chanel = ybcrImageA(:,:,1); % Extract the Y channel (luminance) from the YCbCr image
H_Chanel = hsvImageA(:,:,1); % Extract the H channel (hue) from the HSV image

figure("Name", "Color Space Analysis");
subplot(2,2,1);
imshow(ImgA);
title("Original Image A");

subplot(2,2,2);
imshow(ybcrImageA);
title("Image A in YCbCr color space");

subplot(2,2,3);
imshow(Y_Chanel);
title("Luminance (Y channel) of Image A");

subplot(2,2,4);
imshow(H_Chanel);
title("Hue (H channel) of Image A");

% 4	Reversibility Check:

% Convert back from YCbCr to RGB
reconstructedRGB_YCbCr = ycbcr2rgb(ybcrImageA);

figure("Name", "Reversibility Check");
imshowpair(ImgA, reconstructedRGB_YCbCr, "montage");
title('Comparison of Original Image A and Reconstructed Image from YCbCr');

% 5. save the reconstructed image 
imwrite(reconstructedRGB_YCbCr, 'Classroom\Output\lena-Reconstructed-YCbCr.png');


