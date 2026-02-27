Project_path = 'E:\Matlab\Week_2';  
cd(Project_path); 

A = imread('Asset\baboon.png');

% 1. Convert to or from Grayscale
% A grayscale image occupies a third of the space required for an RGB image, so when it comes to the 
% processing, it requires less computational power to process and can reduce computation time. A grayscale 
% image is conceptually simpler than an RGB image, so developing an image processing algorithm can be 
% more straightforward when working with grayscale.

imgToGray = rgb2gray(A);
figure;
imshow(imgToGray);
imwrite(imgToGray,"Uni\Output\Baboongray.png");

% The grayscale image created by im2gray is a single plane of intensity values. The intensity values are 
% computed as a weighted sum of the RGB plane.
% The im2gray function converts RGB values to grayscale values (Y) by forming a weighted sum of 
% the R, G, and B components:
% Y = 0.2989 * R + 0.5870 * G + 0.1140 * B 