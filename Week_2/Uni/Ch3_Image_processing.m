% Setting path for the the terminal
Project_path = 'E:\Matlab\Week_2';  
cd(Project_path);  

Baboon = imread("Asset\baboon.png");

% The Image Processing Toolbox in Matlab uses several fundamental types of images, such as Binary 
% image, Grayscale image, True colour Image, Multispectral and Hyperspectral Images and many more. 
% These image types determine the way Matlab interprets array elements as pixel intensity values.

% Binary image
% In a binary image, each pixel has one of only two values: 1 or 0. Most functions in the toolbox interpret 
% pixels with value 1 as belonging to a region of interest, and pixels with value 0 as the background. Binary 
% images are frequently used in conjunction with other image types to indicate which portions of the image 
% to process.

% Grayscale image
% A grayscale image is a data matrix whose values represent intensities of one image pixel. You can obtain 
% a grayscale image directly from a camera that acquires a single signal for each pixel. You can also convert 
% truecolor or multispectral images to grayscale to emphasize one particular aspect of the images.
% A grayscale image has a data type of double with pixel values in the range [0, 1].

BimaryImg = rgb2gray(Baboon);
imshow(BimaryImg)
colorbar;
colormap;

% True color 
% A truecolor image is an image in which each pixel has a color specified by three values. Graphics file 
% formats store truecolor images as 24-bit images, where three color channels are 8 bits each. This yields a 
% potential of 16 million colors. The precision with which a real-life image can be replicated has led to the 
% commonly used term truecolor image.
imSize = 200;
RGB = reshape(ones(imSize,1)*reshape(jet(imSize),1,imSize*3),[imSize,imSize,3]);
imshow(RGB)
title('Original RGB Image')

% Seperating the color into 3 columns
[R,G,B] = imsplit(RGB);

figure;
subplot(1,3,1);
imshow(R);
title("Red");
colorbar;

subplot(1,3,2);
imshow(G);
title("Green");
colorbar;

subplot(1,3,3);
imshow(B);
title("Blue");
colorbar;


allBlack = zeros(size(RGB,1,2),class(RGB));

justR = cat(3,R,allBlack,allBlack);
justG = cat(3,allBlack,G,allBlack);
justB = cat(3,allBlack,allBlack,B);

figure;
montage({justR,justG,justB},'Size',[1 3], ...
 "BackgroundColor",'w',"BorderSize",10);
title('Color Representation of the Red, Green, and Blue Color Channels');


