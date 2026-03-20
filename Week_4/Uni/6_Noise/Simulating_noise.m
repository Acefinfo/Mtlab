%% Adding path
PATH = "E:\Matlab\Week_4\Uni\6_Noise";
cd(PATH)


%% Adding image
i = imread("E:\Matlab\Week_4\Uni\Asset\coin.png");
img = rgb2gray(i);
figure()
imshow(img);

%% Adding noise to the image
J = imnoise(img,"salt & pepper",0.02);
figure()
imshow(J);

kavg = filter2(fspecial("average",3),J)/255;
figure()
imshow(kavg);

