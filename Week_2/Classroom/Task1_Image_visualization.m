Project_path = 'E:\Matlab\Week_2';  % Define the project path
cd(Project_path);  % Change the current directory to the project path


figure;
ImgA = imread('Asset\lena-Colour.png');
imshow(ImgA);

% Comparing two images
figure;
imgB = imread('Asset\cameraman.tif');
imshow(ImgB);

figure;
mergImg = imshowpair(ImgA, ImgB, "montage");
title('Comparison of Image A and Image B');

% saving processed images 
imwrite(ImgA, 'Classroom\Output\lena-Colour.png');  







