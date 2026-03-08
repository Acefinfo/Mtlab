% Set the main project directory path
Project_path = 'E:\Matlab\Week_4\Uni\1_Basics';

% Change MATLAB's current working directory to the specified project path
cd(Project_path); 

%% Loading images

% Read the first RGB image from the Asset folder
firstimg = imread("E:\Matlab\Week_4\Uni\Asset\rec1.PNG");

% Read the second RGB image from the Asset folder
secondimg = imread("E:\Matlab\Week_4\Uni\Asset\rec2.PNG");

% Convert the first RGB image into grayscale
% Grayscale images are useful for intensity and contrast analysis
firstimgGray = rgb2gray(firstimg);

% Convert the second RGB image into grayscale
secondimgGray = rgb2gray(secondimg);

%% Adjusting RGB images 

% Enhance brightness of the first RGB image using local brightening
% The value 0.5 determines the strength of the brightness enhancement
firstImgAdjust = imlocalbrighten(firstimg, 0.5);

% Apply the same brightness enhancement to the second RGB image
secondImgAdjust = imlocalbrighten(secondimg,0.5);

% Save the adjusted first RGB image to the Output folder
imwrite(firstImgAdjust, "E:\Matlab\Week_4\Uni\Output\FirstImgAdjustedRGB.png")

% Save the adjusted second RGB image to the Output folder
imwrite(secondImgAdjust, "E:\Matlab\Week_4\Uni\Output\SecondImgAdjustedRGB.png")

%% Display original and adjusted RGB images

% Create a figure window for displaying RGB images
figure("Name", "RGB images and adjusted RGB images")

% Display the original first RGB image
subplot(2,2,1);
imshow(firstimg);
title("First image");

% Display the original second RGB image
subplot(2,2,2);
imshow(secondimg);
title("Second image");

% Display the brightness-adjusted first RGB image
subplot(2,2,3);
imshow(firstImgAdjust);
title("First image adjusted")

% Display the brightness-adjusted second RGB image
subplot(2,2,4);
imshow(secondImgAdjust);
title("Second image adjusted")

%% Adjusting grayscale images

% Improve contrast of the grayscale first image using imadjust
% imadjust stretches the intensity values to enhance contrast
firstImgGrayAdjust = imadjust(firstimgGray);

% Improve contrast of the grayscale second image
secondImgGrayAdjust = imadjust(secondimgGray);

% Save the adjusted grayscale first image
imwrite(firstImgGrayAdjust, "E:\Matlab\Week_4\Uni\Output\FirstImgAdjustedGray.png")

% Save the adjusted grayscale second image
imwrite(secondImgGrayAdjust, "E:\Matlab\Week_4\Uni\Output\SecondImgAdjustedGray.png")

%% Display original and adjusted grayscale images

% Create a figure window for grayscale comparison
figure("Name", "GrayScale images and adjusted Grayscale images")

% Display the original first image
subplot(2,2,1);
imshow(firstimg);
title("First image");

% Display the original second image
subplot(2,2,2);
imshow(secondimg);
title("Second image");

% Display the adjusted grayscale first image
subplot(2,2,3);
imshow(firstImgGrayAdjust);
title("First image adjusted")

% Display the adjusted grayscale second image
subplot(2,2,4);
imshow(secondImgGrayAdjust);
title("Second image adjusted")

%% Comparing first adjusted images

% Display RGB adjusted and grayscale adjusted versions side-by-side
figure;
imshowpair(firstImgAdjust, firstImgGrayAdjust, "montage");

% Fuse both images into a single comparison image
FirstImagePair = imfuse(firstImgAdjust, firstImgGrayAdjust, "montage");

% Save the comparison image
imwrite(FirstImagePair, "E:\Matlab\Week_4\Uni\Output\FirstImagePair.png");

%% Comparing second adjusted images

% Display RGB adjusted and grayscale adjusted versions side-by-side
figure;
imshowpair(secondImgAdjust, secondImgGrayAdjust, "montage");

% Fuse both images into a single comparison image
SecondImagePair = imfuse(secondImgAdjust, secondImgGrayAdjust, "montage");

% Save the comparison image
imwrite(SecondImagePair, "E:\Matlab\Week_4\Uni\Output\SecondImagePair.png");