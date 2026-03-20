PATH = "E:\Matlab\Week_4\Uni\6_Noise";
cd(PATH)

%% Adding image

i = imread("E:\Matlab\Week_4\Uni\Asset\rec.JPG");
gs = rgb2gray(i);
gs = imadjust(gs);

%% Adding noise to image

BW = imbinarize(gs,"adaptive","ForegroundPolarity","dark");

imshowpair(gs,BW,"montage");

H = fspecial("average",3);
gssmooth = imfilter(gs,H);

figure()
imshowpair(gs,gssmooth,"montage");

