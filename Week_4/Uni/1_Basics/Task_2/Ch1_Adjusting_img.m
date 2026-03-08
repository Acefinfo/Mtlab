% Set the main project directory path
Project_path = 'E:\Matlab\Week_4\Uni\1_Basics';

% Change MATLAB's current working directory to the project path
cd(Project_path); 

%% Loading images

% Read the first RGB image (rec1.PNG) from the Asset folder
firstimg = imread("E:\Matlab\Week_4\Uni\Asset\rec1.PNG");

% Read the second RGB image (rec2.PNG) from the Asset folder
secondimg = imread("E:\Matlab\Week_4\Uni\Asset\rec2.PNG");

% Convert the first RGB image to grayscale
% Grayscale images are often used for intensity and histogram analysis
firstimgGray = rgb2gray(firstimg);

% Convert the second RGB image to grayscale
secondimgGray = rgb2gray(secondimg);

%% Adjusting RGB images 

% Apply local brightness enhancement to the first RGB image
% imlocalbrighten improves the brightness in darker areas of the image
% The value 0.5 controls the strength of the brightening effect
firstImgAdjust = imlocalbrighten(firstimg, 0.5);

% Apply the same brightness enhancement to the second RGB image
secondImgAdjust = imlocalbrighten(secondimg,0.5);

% Save the adjusted first RGB image to the Output folder
imwrite(firstImgAdjust, "E:\Matlab\Week_4\Uni\Output\FirstImgAdjustedRGB.png")

% Save the adjusted second RGB image to the Output folder
imwrite(secondImgAdjust, "E:\Matlab\Week_4\Uni\Output\SecondImgAdjustedRGB.png")


%% Displaying original and adjusted images

% Create a figure window with a custom name
figure("Name", "RGB images and adjusted RGB images")

% Display the original first image
subplot(2,2,1);
imshow(firstimg);
title("First image");

% Display the original second image
subplot(2,2,2);
imshow(secondimg);
title("Second image");

% Display the brightness-adjusted first image
subplot(2,2,3);
imshow(firstImgAdjust);
title("First image adjusted")

% Display the brightness-adjusted second image
subplot(2,2,4);
imshow(secondImgAdjust);
title("Second image adjusted")