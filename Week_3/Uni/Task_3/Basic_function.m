function C = sub_imgs(A,B)
%This function accepts two images of similar size A and B
%The output is the difference image C=A-B

if ~isequal(size(A),size(B))
    disp("Images are not the same size");
    return;
else
    C = imsubtract(A,B);
    imshow(C)
end

end



Project_path = 'E:\Matlab\Week_3\Uni\Task_3';
cd(Project_path);

A = imread("E:\Matlab\Week_3\Asset\cameraman.tif");
B = A;
C = sub_imgs(A,B);