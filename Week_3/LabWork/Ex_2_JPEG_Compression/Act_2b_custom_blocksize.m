Project_path = 'E:\Matlab\Week_3\LabWork\Ex_2_JPEG_Compression';
cd(Project_path);



%% Step 1: Load and preprocess the image
original_img = imread("E:\Matlab\Week_3\Asset\lena-Colour.png");

% Convert to grayscale
img = rgb2gray(original_img);

% Convert to double
img = im2double(img);

%% Display original image
figure;
imshow(img);
title('Original Image');

%% Step 2: Define block size and quantization matrix
blockSize = 16;

quantMatrix = [
    16 16 16 16 24 24 24 24 40 40 40 40 51 51 51 51;
    16 16 16 16 24 24 24 24 40 40 40 40 51 51 51 51;
    16 16 16 16 24 24 24 24 40 40 40 40 51 51 51 51;
    16 16 16 16 24 24 24 24 40 40 40 40 51 51 51 51;

    12 12 12 12 26 26 26 26 58 58 58 58 60 60 60 60;
    12 12 12 12 26 26 26 26 58 58 58 58 60 60 60 60;
    12 12 12 12 26 26 26 26 58 58 58 58 60 60 60 60;
    12 12 12 12 26 26 26 26 58 58 58 58 60 60 60 60;

    14 14 14 14 40 40 40 40 57 57 57 57 69 69 69 69;
    14 14 14 14 40 40 40 40 57 57 57 57 69 69 69 69;
    14 14 14 14 40 40 40 40 57 57 57 57 69 69 69 69;
    14 14 14 14 40 40 40 40 57 57 57 57 69 69 69 69;

    18 18 18 18 68 68 68 68 109 109 109 109 103 103 103 103;
    18 18 18 18 68 68 68 68 109 109 109 109 103 103 103 103;
    18 18 18 18 68 68 68 68 109 109 109 109 103 103 103 103;
    18 18 18 18 68 68 68 68 109 109 109 109 103 103 103 103;
];

% Compression factor
compressionFactor = 0.5;

quantMatrix = round(quantMatrix * compressionFactor);

%% Step 3: Divide image into 8x8 blocks and apply DCT

[rows, cols] = size(img);

compressedImg = zeros(rows, cols);

for i = 1:blockSize:rows-blockSize+1
    for j = 1:blockSize:cols-blockSize+1
        
        % Extract 8x8 block
        block = img(i:i+blockSize-1, j:j+blockSize-1);

        % Apply DCT
        dctBlock = dct2(block);

        % Quantize
        quantizedBlock = (dctBlock ./ quantMatrix);

        % Store coefficients
        compressedImg(i:i+blockSize-1, j:j+blockSize-1) = quantizedBlock;

    end
end

%% Display compressed image (DCT coefficients)

figure;
imshow(compressedImg, []);
title("Compressed Image (Quantized DCT Coefficients)");

%% Step 4: Reconstruct image using inverse DCT

reconstructedImg = zeros(rows, cols);

for i = 1:blockSize:rows-blockSize+1
    for j = 1:blockSize:cols-blockSize+1
        
        % Extract quantized block
        quantizedBlock = compressedImg(i:i+blockSize-1, j:j+blockSize-1);

        % Dequantize
        dequantizedBlock = round(quantizedBlock .* quantMatrix);

        % Inverse DCT
        idctBlock = idct2(dequantizedBlock);

        % Store reconstructed block
        reconstructedImg(i:i+blockSize-1, j:j+blockSize-1) = idctBlock;

    end
end

% Clip pixel values
reconstructedImg = min(max(reconstructedImg,0),1);

%% Display reconstructed image
figure;
imshow(reconstructedImg);
title("Reconstructed Image");
imwrite(reconstructedImg, 'Output\Act2b_reconstructed_image.png'); 

%% Step 5: Calculate PSNR

mse = mean((img(:) - reconstructedImg(:)).^2);

psnr_value = 10 * log10(1 / mse);

fprintf("PSNR value = %.2f dB\n", psnr_value);