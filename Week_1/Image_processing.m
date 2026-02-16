image = imread('Asset/Asset2.jpg');  % Read the image from the specified path

%  Convert image to grayscale image
gray_image = rgb2gray(image);  % Convert the RGB image to grayscale
imshow(gray_image);  % Display the grayscale image
title('Grayscale Image');  % Set the title of the displayed image

% Image resizing
resized_image = imresize(gray_image, 0.5);   % Resize image to 50% of its original size
imshow(resized_image);  % Display the resized image
title('Resized Image');  % Set the title of the displayed image

%  Image rotation
rotated_image = imrotate(gray_image, 45);  % Rotate the image by 45 degrees
imshow(rotated_image);  % Display the rotated image
title('Rotated Image');  % Set the title of the displayed image


