Project_path = 'E:\Matlab\Week_1';  % Define the project path
cd(Project_path);  % Change the current directory to the project path

% Saving and exporting image data in MATLAB

image = imread('Asset/Asset1.jpg');  

gray_img = im2double(image);

R = gray_img;            % Red channel
G = 0.5 * gray_img;      % Reduce green
B = 1 - gray_img;        % Blue inverse

color_img = cat(3, R, G, B);

figure;
imshow(color_img);
title('Custom Colored Image');

% Saging image to a file
imwrite(color_img, 'Output/CustomColored.png')

% Saving image data to a .mat file
save('Output/image_data.mat', 'color_img');
