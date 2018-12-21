%read the image
A = imread('test_buttons.png');
%grayscale
A_gray = rgb2gray(A);
%Define the mask
mask = zeros(size(A_gray));
mask(10:end-10, 10:end-10) = 1;
%Active contour model
B = activecontour(A_gray, mask, 500);

subplot(1,2,1), imshow(A_gray), title('Grayscale');
subplot(1,2,2), imshow(B), title('B');
