Project_path = 'E:\Matlab\Week_1';  % Define the project path
cd(Project_path);  % Change the current directory to the project path

% Loading images:
figure;
image = imread('Asset/Asset2.jpg');
imshow(image); 


figure;
img_crop = imcrop(image);
imshow(img_crop);
