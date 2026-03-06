Project_path = 'E:\Matlab\Week_3\LabWork\Ex_2_JPEG_Compression';
cd(Project_path); 

%% Load images

original = imread("E:\Matlab\Week_3\Asset\lena-Colour.png");
original = rgb2gray(original);
original = im2double(original);

act1 = imread("Output\Act1_reconstructed_image.png");
act2a = imread("Output\Act2a_reconstructed_image.png");
act2b = imread("Output\Act2b_reconstructed_image.png");

act1 = im2double(act1);
act2a = im2double(act2a);
act2b = im2double(act2b);

%% Calculate SSIM

ssim_act1 = ssim(act1, original);
ssim_act2a = ssim(act2a, original);
ssim_act2b = ssim(act2b, original);


%% Output results


fprintf("SSIM Comparison\n");
fprintf("---------------------------\n");

fprintf("Activity 1 SSIM  = %.4f\n", ssim_act1);
fprintf("Activity 2a SSIM = %.4f\n", ssim_act2a);
fprintf("Activity 2b SSIM = %.4f\n", ssim_act2b);

%% Display images for comparisn

figure;

subplot(2,2,1)
imshow(original)
title("Original")

subplot(2,2,2)
imshow(act1)
title("Activity 1")

subplot(2,2,3)
imshow(act2a)
title("Activity 2a")

subplot(2,2,4)
imshow(act2b)
title("Activity 2b")