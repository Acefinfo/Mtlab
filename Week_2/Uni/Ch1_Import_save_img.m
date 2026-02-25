
% Setting path for the the terminal
Project_path = 'E:\Matlab\Week_2';  
cd(Project_path);  

ImgA = imread('Asset\lena-Colour.png');

imshow(ImgA);

Pv = ImgA(128,39,1)     % Get R (red) value at given pixel

% Extract first Column of the red chanel
Red_col = ImgA(:,1,1)

% Extracting first row of the red channel
Red_row = ImgA(1,:,1)


% Load second image
ImgB = imread('Asset\barbara.png');

% Coparing two images
% imshowpair(A,B, Method)

% 'falsecolor' : Create a composite RGB image showing A and B overlayed in different color bands. This is the default.
% 'blend' : Overlay A and B using alpha blending.
% 'checkerboard' : Create image with alternating rectangular regionsfrom A and B.
% 'diff' : Difference image created from A and B.
% 'montage' : Put A and B next to each other in the same image.
figure("Name", "Montage display");
imshowpair(ImgA,ImgB,"montage");
montageImg = imfuse(ImgA, ImgB, "montage");
imwrite(montageImg, 'Uni\Output\montage_output.png');

figure("Name", "falsecolor");
imshowpair(ImgA,ImgB,"falsecolor");
falseCol = imfuse(ImgA,ImgB,"falsecolor");
imwrite(falseCol, 'Uni\Output\falsecolor_output.png');

figure("Name", "blend display");
imshowpair(ImgA,ImgB,"blend")
blendDesp= imfuse(ImgA,ImgB,"blend");
imwrite(blendDesp, 'Uni\Output\blend_output.png');

figure("Name", "checkerboard display");
imshowpair(ImgA,ImgB,"checkerboard")
checkboardImg= imfuse(ImgA,ImgB,"checkerboard");
imwrite(checkboardImg, 'Uni\Output\checkerboard_output.png');

figure("Name", "diff display");
imshowpair(ImgA,ImgB,"diff")
diffImg = imfuse(ImgA,ImgB,"diff");
imwrite(diffImg, 'Uni\Output\diff_output.png');


% Image diff from .tif and png
C = imread("Asset\cameraman.tif");
imwrite(C, 'Uni\Output\cameraman.png')

D = imread('Uni\Output\cameraman.png');
figure("Name", "Montage image of tif and png")
imshowpair(C ,D, "montage");




