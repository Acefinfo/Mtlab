% Setting path for the the terminal
Project_path = 'E:\Matlab\Week_2';  
cd(Project_path);  

% Loading the images
ImgA = imread('Asset\lena-Colour.png');
ImgB = imread('Asset\barbara.png');
Baboon = imread("Asset\baboon.png");
 


% Finding the size of the image
size(ImgA);
% This returns arry first is height, second is width and last is color scale

R = ImgA(:,:,1);
G = ImgA(:,:,2);
B = ImgA(:,:,3);


figure;
imshow(R);

size(R)

figure("Name", "Montage of colour specturum");
montage({R,G,B});

% Most images use the unsigned 8-bit integer (uint8) data type, which stores integers from 0 to 255. Bright 
% or brightly colored images contain pixel intensity values near 255 in one or more color planes.


Amax = max(Baboon,[],"all");
Amin = min(Baboon,[],"all");

disp("Max Brightness in the Baboon image is: "+Amax)
disp("Minium Brightness in the Baboon image is: "+Amin)



% Image can be split into colors using imsplit() function and it reruens in array
[Red,Green,Blue] = imsplit(Baboon);
figure;
montage({Red, Green, Blue});
