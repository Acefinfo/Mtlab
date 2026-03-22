%% Setting up the path
path = "E:\Matlab\Week_5_Edge_detection";
cd(path);

%% Adding image
img = imread("E:\Matlab\Week_5_Edge_detection\Asset\cameraman.tif");

% img = 255 - img;
figure;
imshow(img);
title("Original image")

%% Converting to gray scale if the image is in Rgb
if size(img, 3) == 3
    img = rgb2gray(img); 
end

figure;
imshow(img);
title("Gray scale image");

%% Applying robbet operation

% Roberts Operator
roberts_x = [1 0; 0 1];
roberts_y = [0 1; 1 0];

Gx = imfilter(double(img), roberts_x);
Gy = imfilter(double(img),roberts_y);

% Compute gradient magnitude
G_roberts = sqrt(Gx.^2 + Gy.^2);

% Display the result
figure;
imshow(G_roberts, []);
title('Roberts Edge Detection');


%%  Sobel Operator

sobel_x = [1 0 1; 2 0 2; 1 0 1];
sobel_y = [1 2 1; 0 0 0; 1 2 1];

Gx = imfilter(double(img), sobel_x);
Gy = imfilter(double(img), sobel_y);

% Compute gradient magnitude
G_sobel = sqrt(Gx.^2 + Gy.^2);

% Display the result
figure;
imshow(G_sobel, []);
title('Sobel Edge Detection');



%% Prewitt Operator
% The Prewitt operator is similar to Sobel but uses slightly different masks.

prewitt_x = [1 0 1; 1 0 1; 1 0 1];
prewitt_y = [1 1 1; 0 0 0; 1 1 1];

Gx = imfilter(double(img), prewitt_x);
Gy = imfilter(double(img), prewitt_y);

% Compute gradient magnitude
G_prewitt = sqrt(Gx.^2 + Gy.^2);

% Display the result
figure;
imshow(G_prewitt, []);
title('Prewitt Edge Detection');


%% Laplacian of Gaussian (LoG)
sigma = 1.5; % Standard deviation of Gaussian
h = fspecial('log', [5 5], sigma); % Create LoG filter

G_log = imfilter(double(img), h);

% Display the result
figure;
imshow(G_log, []);
title('Laplacian of Gaussian (LoG)');

%% Canny Edge Detector
edges_canny = edge(img, 'Canny');

% Display the result
figure;
imshow(edges);
title('Canny Edge Detection');

%% Displaying output images 
figure;
subplot(2, 3, 1), imshow(img), title('Original Image');
subplot(2, 3, 2), imshow(G_roberts, []), title('Roberts');
subplot(2, 3, 3), imshow(G_sobel, []), title('Sobel');
subplot(2, 3, 4), imshow(G_prewitt, []), title('Prewitt');
subplot(2, 3, 5), imshow(G_log, []), title('LoG');
subplot(2, 3, 6), imshow(edges_canny,[]), title('Canny');


figure;
subplot(2, 3, 1), imshow(img), title('Original Image');
subplot(2, 3, 2), imshow(G_roberts), title('Roberts');
subplot(2, 3, 3), imshow(G_sobel ), title('Sobel');
subplot(2, 3, 4), imshow(G_prewitt), title('Prewitt');
subplot(2, 3, 5), imshow(G_log), title('LoG');
subplot(2, 3, 6), imshow(edges_canny), title('Canny');







