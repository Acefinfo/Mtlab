%% Prijecr path
PATH = "E:\Matlab\Week_4\Uni\4_Gamma_Correction";
cd(PATH)

%% Importing image
img = imread("E:\Matlab\Week_4\Asset\cardark.jpg");
imshow(img);
title("Original image");

%% using gamma correction

img_gamma = imadjust(img,[],[],0.1);
figure()
imshow(img_gamma)