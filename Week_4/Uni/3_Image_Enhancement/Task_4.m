% Now get a copy of pout.jpg and try to adjust the image similar to what has been done for the tire.jpg image.



%% Prijecr path
PATH = "E:\Matlab\Week_4\Uni\3_Image_Enhancement";
cd(PATH)

%% Importing the image 
p = imread("E:\Matlab\Week_4\Uni\Asset\pout.jpg");
pout  = rgb2gray(p);

t = imread("E:\Matlab\Week_4\Uni\Asset\tire.jpg");
tire = rgb2gray(t);

%% Viewing the image.
figure;
imshow(pout);
title("Grayscale image")

pout_imadjust = imadjust(pout);
pout_histeq = histeq(pout);
pout_adapthisteq = adapthisteq(pout);




figure
subplot(1,2,1)
imhist(pout)
title('Histogram of pout.jpg')
subplot(1,2,2)
imhist(tire)
title('Histogram of tire.jpg');
