%% About the image enhancement

% To enhance image we learned about 
% 1. imadjust
% 2. histeq
% 3. adapthisteq

% histeq:   performs histogram equalisation. It enhances the contrast of images by transforming the values in an intensity 
            % image so that the histogram of the output image approximately matches a specified histogram (uniform distribution by default).

% adapthisteq:  performs contrast-limited adaptive histogram equalisation. Unlike histeq, it operates on small data regions (tiles) rather 
                % than the entire image. Each tile's contrast is enhanced so that the histogram of each output region approximately matches the specified 
                % histogram (uniform distribution by default). The contrast enhancement can be limited in order to avoid amplifying the noise which might 
                % be present in the image.

%% Prijecr path
PATH = "E:\Matlab\Week_4\Uni\3_Image_Enhancement";
cd(PATH)

%% Rwad image
t = imread("E:\Matlab\Week_4\Uni\Asset\tire.jpg");
tire = rgb2gray(t);

figure;
imshow(tire);
title("Grayscale image")

tire_imadjust = imadjust(tire);
tire_histeq = histeq(tire);
tire_adapthisteq = adapthisteq(tire);


figure;
imshow(tire_imadjust);
title("Enhanced image using imadjust");

figure;
imshow(tire_histeq);
title("Enhanced image using histeq");

figure;
imshow(tire_adapthisteq);
title("Enhanced image using adapthisteq");

figure;
montage({tire,tire_imadjust,tire_histeq,tire_adapthisteq},'Size',[1 4])
title("Original Image and Enhanced Images using imadjust, histeq, and adapthisteq")
