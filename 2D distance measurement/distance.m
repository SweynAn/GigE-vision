% Name: distance.m  created: July 11th 
% simple program to measure the distance between two points
% for stationary measurement first
% Shiwen An

clear all;
clc;

% read in image
im = imread('copper.jpg');

% Edge detection 
I = rgb2gray(im);

% function to detect the edge in gray scale
BW1 = edge(I, 'Canny'); % not that good for metal piece like copper
BW2 = edge(I, 'Prewitt');
BW3 = edge(I, 'Sobel');
BW4 = edge(I, 'Roberts');
% dilate and erode images

subplot(2,2,1)
imshow(BW1)
subplot(2,2,2)
imshow(BW2)
subplot(2,2,3)
imshow(BW3)
subplot(2,2,4)
imshow(BW4)

se = strel('line',1,45);
BW1 = imdilate(BW1,se);
BW2 = imdilate(BW2,se);
BW1 = imerode(BW1,se);
BW2 = imerode(BW2,se);


% gather data about the image and store in form of matrix
sz = size(im);
myData.Units = 'pixels';
myData.MaxValue = hypot(sz(1),sz(2));
myData.Colormap = hot;
myData.ScaleFactor = 1;

%hIm = imshow(im);