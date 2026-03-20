%% Prijecr path
PATH = "E:\Matlab\Week_4\Uni\5_Image_Segmentation";
cd(PATH)

%% %% Task 6
%  Read the “cameraman.tif” image and name it “img”, change its format to grayscale and name it “gs”, adjust the image and name it gsAdj,  t
% hen create a binary image by thresholding gsAdj at half the maximum possible intensity (the maximum intensity is 255), and name it BW. Display BW using imshow.

%% Image reading
img = imread("E:\Matlab\Week_4\Uni\Asset\cameraman.tif");
figure()
imshow(img);
title(img)

%% Inspecting the image
figure()
imhist(img);


%% Converting image to grayscale 
gs = img;
figure()
imshow(gs);
title("Grayscale image")

gsadjust = imadjust(gs);
figure()
imshow(gsadjust);
title("Adjusting the image")

%% Threshold at half of maximum intensity (255/2 ≈ 127)
BW = gsadjust > 127;

imshow(BW);
title("Binary image")