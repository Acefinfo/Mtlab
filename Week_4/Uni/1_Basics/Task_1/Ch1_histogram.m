% Set the project directory path where MATLAB will work from
Project_path = 'E:\Matlab\Week_4\Uni\1_Basics';

% Change the current working directory to the project folder
cd(Project_path); 

%% Loading images

% Read the first image (rec1.PNG) from the asset folder
firstimg = imread("E:\Matlab\Week_4\Uni\Asset\rec1.PNG");

% Read the second image (rec2.PNG) from the asset folder
secondimg = imread("E:\Matlab\Week_4\Uni\Asset\rec2.PNG");

% Convert the first image from RGB (color) to grayscale
% Grayscale simplifies intensity analysis for histogram operations
firstimg = rgb2gray(firstimg);

% Convert the second image from RGB to grayscale
secondimg = rgb2gray(secondimg);


%% Displaying two images 

% Create a new figure window
figure;

% Display the first image in the first subplot
subplot(1,2,1)
imshow(firstimg);
title("First Image")

% Display the second image in the second subplot
subplot(1,2,2)
imshow(secondimg);
title("Second Image")

%% Displaying histogram of two images

% Histograms show the distribution of pixel intensity values
% Pixel intensities range from 0 (black) to 255 (white)

figure;

% Histogram of the first image
subplot(1,2,1)
imhist(firstimg);
title("First image Histogram")

% Histogram of the second image
subplot(1,2,2)
imhist(secondimg);
title("Second image Histogram")

%% Adjusting the contrast of first image

% Create a new figure
figure;

% Use imadjust to automatically improve image contrast
% It stretches the intensity values so darker pixels become darker
% and brighter pixels become brighter
firstimgAdj = imadjust(firstimg);

% Display original and adjusted image side by side
imshowpair(firstimg, firstimgAdj, "montage");
title("First image and adjusted image")

%% Comparing histogram of the first image and the adjusted image

figure;

% Histogram of the original first image
subplot(1,2,1);
imhist(firstimg);
title("First image histogram");

% Histogram of the contrast adjusted image
subplot(1,2,2);
imhist(firstimgAdj);
title("Adjusted image histogram");