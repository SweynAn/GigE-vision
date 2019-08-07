im = imread('Cu5.jpg');

imshow(im)

% determine the Radius Range for searching Circles
% in term of pixel
% for Cu2.jpg it gives the pixel of 
% 100 pixels for outer circle
% 50 pixels for the inner circle 
% 420 pixels for the coin

d = imdistline;
gray = rgb2gray(im);

% Considering recognize the semi-circle
% We might need to apply hough transform

BW1 = edge(gray, 'Sobel');
imshow(BW1)
se = strel('line',1,45);
BW2 = imdilate(BW1,se);
%imshow(BW2)

% Start to find contours in the edge map
figure;
imcontour(gray,3)
