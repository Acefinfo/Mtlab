Project_path = 'E:\Matlab\Week_2';  
cd(Project_path);  

A = imread('Asset\baboon.png');


% 1. RGB Colorspace
% The RGB color space represents images as an m-by-n-by-3 numeric array whose elements specify the 
% intensity values of the red, green, and blue colour channels. The range of numeric values depends on the 
% data type of the image.
% ● For single or double arrays, RGB values range from [0, 1].
% ● For uint8 arrays, RGB values range from [0, 255].
% ● For uint16 arrays, RGB values range from [0, 65535].

% 2. Hue, Saturation, Value (HSV)
% The HSV (Hue, Saturation, Value) color space corresponds better to how people experience color than the 
% RGB color space does.
% Hue:          Hue, which corresponds to the color’s position on a color wheel. H is in the 
                % range [0, 1]. As H increases, colors transition from red to orange, yellow, 
                % green, cyan, blue, magenta, and finally back to red. Both 0 and 1 indicate red.
%  Saturation:  Saturation, which is the amount of hue or departure from neutral. S is in the 
                % range [0, 1]. As S increases, colors vary from unsaturated (shades of gray) to 
                % fully saturated (no white component).
% Value:        Value, which is the maximum value among the red, green, and blue 
                % components of a specific color. V is in the range [0, 1]. As V increases, the 
                % corresponding colors become increasingly brighter.
HSV = rgb2hsv(A);
figure("Name","Baboon Hsv");
imshow(HSV);
title("Image convert from RGB to HSV");
imwrite(HSV,"Uni\Output\Baboon_HSV.png");



% Creating RGB image
rgb(:,:,1) = [1 1; 0 0.5];
rgb(:,:,2) = [0 1; 0 0.5];
rgb(:,:,3) = [0 0; 1 0.5];
figure("Name", "RGB Color grading")
image(rgb);

RGBHSV = rgb2hsv(rgb);
figure("Name", "Rgb to HSV");
image(RGBHSV);

% Hue:          Value from 0 to 1 that corresponds to the color’s position on a color wheel. As 
                % hue increases from 0 to 1, the color transitions from red to orange, yellow, 
                % green, cyan, blue, magenta, and finally back to red.
% Saturation:   Amount of hue or departure from neutral. 0 indicates a neutral shade, whereas 
                % 1 indicates maximum saturation.
% Value:        Maximum value among the red, green, and blue components of a specific 
                % color

baboon_hsv = rgb2hsv(A);
figure("Name", "Montage Rgb to Hsv");
imshowpair(A, baboon_hsv,"montage");
montageimg = imfuse(A, baboon_hsv,"montage");
imwrite(montageimg, 'Uni\Output\BaboonRGBHSV_Montage.png');

% 3.YCbCr
% The YCbCr color space is widely used for digital video. In this format, luminance information is stored as 
% a single component (Y) and chrominance information is stored as two color-difference components (Cb 
% and Cr). Cb and Cr represent the difference between a reference value and the blue or red component, 
% respectively. (YUV, another color space widely used for digital video, is very similar to YCbCr but not 
% identical.)
% Y:    Luminance or brightness of the image. Colors increase in brightness as Y 
        % increases.
% Cb:   Chrominance value that indicates the difference between the blue component 
        % and a reference value.
% Cr:   Chrominance value that indicates the difference between the red component 
        % and a reference value

% The range of numeric values depends on the data type of the image. YCbCr does not use the full range of 
% the image data type so that the video stream can include additional (non-image) information.
% ● For single or double arrays, Y is in the range [16/255, 235/255] and Cb and Cr are in the 
% range [16/255, 240/255].
% ● For uint8 arrays, Y is in the range [16, 235] and Cb and Cr are in the range [16, 240].
% ● For uint16, Y is in the range [4112, 60395] and Cb and Cr are in the range [4112, 61680]

Img = imread("Asset\test.jpg");
Img_ycbcr = rgb2ycbcr(Img);

figure;
imshowpair(Img,Img_ycbcr,"montage");

% Now write a function to Convert Image from YCbCr (J) to RGB (K) and display the original Luminance 
% and the converted image in RGB format

% Extracting Ychanel
Ychanel = Img_ycbcr(:,:,1);

figure;
imshow(Ychanel);
title('Original Luminance (Y Channel)');

Img_reconstruction = ycbcr2rgb(Img_ycbcr);

figure;
imshowpair(Img,Img_reconstruction,"montage");


