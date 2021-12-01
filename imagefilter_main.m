%% main
close all
clc
clear
%% 读取图像 

image = imread('Lena.png');
image = rgb2gray(image);

figure(1)
imshow(image)

%% 图像锐化

f_average = fspecial('average',[3 3]);
f_sobel = fspecial('sobel');
f_laplacian = fspecial('laplacian',0);

B1 = imfilter(image,f_average);
B2 = imfilter(image,f_sobel);
B3 = imfilter(image,f_laplacian);

figure;
subplot(221);imshow(image);
subplot(222);imshow(B1,[]);
subplot(223);imshow(B2,[]);
subplot(224);imshow(-B3,[]);
figure;
subplot(221);imsho(image,[]);
subplot(222);imshow(image-B1,[]);
subplot(223);imshow(image-B2,[]);
subplot(224);imshow(image-B3,[]);
figure;
imshow(image-B2,[]);



