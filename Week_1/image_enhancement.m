
% Loading images:
image = imread('Asset/Asset1.jpg');  

% Adjusting the contrast
figure;
adj_imf = imadjust(image);
imshow(adj_imf);    % Display the contrast-adjusted image
title('Contrast Adjusted Image');  

% Histogram Equalization
figure;
eq_img = histeq(image);
imshow(eq_img);  
title('Histogram Equalized Image');

% Noise Addition and Filtering
figure;
noise_img = imnoise(image, "salt & pepper", 0.1);  % Add salt and pepper noise to the image
imshow(noise_img);
title('Noisy Image');

% Apply median filter to remove noise
figure;
filtered_img = medfilt2(noise_img);
imshow(filtered_img);
title('Filtered Image');

