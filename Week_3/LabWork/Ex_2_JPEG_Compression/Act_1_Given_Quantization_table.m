
Project_path = 'E:\Matlab\Week_3\LabWork\Ex_2_JPEG_Compression';
cd(Project_path);  


% JPEG Compression Using DCT in MATLAB

clc;
clear;

% Step 1: Load and preprocess the image
original_img = imread("E:\Matlab\Week_3\Asset\lena-Colour.png"); % Replace with your image file
img = rgb2gray(original_img); % Convert to grayscale if necessary
img = im2double(img); % Convert image to double precision for processing

% Display original image
figure;
imshow(img);
title('Original Image');

% Step 2: Define block size and quantization matrix
blockSize = 8; % Standard JPEG block size
quantMatrix =  [
    16 11 10 16 24 40 51 61;
    12 12 14 19 26 58 60 55;
    14 13 16 24 40 57 69 56;
    14 17 22 29 51 87 80 62;
    18 22 37 56 68 109 103 77;
    24 35 55 64 81 104 113 92;
    49 64 78 87 103 121 120 101;
    72 92 95 98 112 100 103 99
];

compressionFactor = 0.5; % Smaller value = better quality
quantMatrix = round(quantMatrix * compressionFactor);

% Step 3: Divide the image into 8x8 blocks and apply DCT
[rows, cols] = size(img);
compressedImg = zeros(rows, cols);

for i = 1:blockSize:rows-blockSize+1
    for j = 1:blockSize:cols-blockSize+1
        % Extract 8x8 block
        block = img(i:i+blockSize-1, j:j+blockSize-1);
        
        % Apply DCT to the block
        dctBlock = dct2(block);
        
        % Quantize the DCT coefficients
        quantizedBlock = (dctBlock ./ quantMatrix);
        % quantizedBlock = round(dctBlock ./ quantMatrix);
        
        % Store the quantized block
        compressedImg(i:i+blockSize-1, j:j+blockSize-1) = quantizedBlock;
    end
end

% Display the compressed image (quantized DCT coefficients)
figure;
imshow(compressedImg, []);
title('Compressed Image (Quantized DCT Coefficients)');

% Step 4: Reconstruct the image using inverse DCT
reconstructedImg = zeros(rows, cols);

for i = 1:blockSize:rows-blockSize+1
    for j = 1:blockSize:cols-blockSize+1
        % Extract quantized block
        quantizedBlock = compressedImg(i:i+blockSize-1, j:j+blockSize-1);
        
        % Dequantize the block
        dequantizedBlock = round(quantizedBlock .* quantMatrix);
        
        % Apply inverse DCT
        idctBlock = idct2(dequantizedBlock);


        
        % Store the reconstructed block
        reconstructedImg(i:i+blockSize-1, j:j+blockSize-1) = idctBlock;

                % Clip pixel values to [0, 1]
       % reconstructedImg = max(0, min(reconstructedImg, 1));
    end
end

% Display the reconstructed image
figure;
imshow(reconstructedImg, []);
title('Reconstructed Image');
imwrite(reconstructedImg, 'Output\Act1_reconstructed_image.png'); 

% Step 5: Calculate Mean Squared Error (MSE) and Peak Signal-to-Noise Ratio (PSNR)
mse = mean((img(:) - reconstructedImg(:)).^2);
psnr = 10 * log10(1 / mse); % Assuming pixel values are normalized to [0, 1]

fprintf('Mean Squared Error (MSE): %.4f\n', mse);
fprintf('Peak Signal-to-Noise Ratio (PSNR): %.2f dB\n', psnr);

