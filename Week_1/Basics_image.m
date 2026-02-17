Project_path = 'E:\Matlab\Week_1';  % Define the project path
cd(Project_path);  % Change the current directory to the project path

% Basics of image processing in MATLAB

% Read and display image
image = imread('Asset/Asset1.jpg');
imshow(image);

% Adding title and labels to the image
title('Sample image');  % Add a title to the image
xlabel('X-axis');       % Label for X-axis
ylabel('Y-axis');       % Label for Y-axis

% Get the size of the image
img_size = size(image);
disp("Image dimension are:");
disp(img_size);

% Get the class of the image
img_class = class(image);   % Get the class of the image (e.g., uint8, double, etc.)
disp("Image class is:");    
disp(img_class);

if size(image, 3) == 1
    disp("The image is grayscale.");
elseif size(image, 3) == 3
    disp("The image is RGB.");
else
    disp("The image has an unsupported number of channels.");
end

info = imfinfo('Asset/Asset1.jpg');  % Get information about the image file
disp('Image metadata:');
disp(info);
