function exp1
img1 = imread('br.jpg');
subplot(3,3,1);
imshow(img1);
title('Original image');
img2 = rgb2gray(img1);
subplot(3,3,2);
imshow(img2);
title('Gray scale Image');
img3 = imresize(img2, [255 255]);% image resizing
subplot(3,3,3);
imshow(img3);
title('Resized Image');
img4 = imcrop(img2,[50 50 80 100]);
subplot(3,3,4);
imshow(img4);
title('Cropped Image');
% img5 = imcrop(img2, [50 50 80 100]);
% subplot(3,3,5);
% imshow(img5);
img6 = imbinarize(img2, 'adaptive');
subplot(3,3,5);
imshow(img6);
title('Thresholded Image');
img7 = imadjust(img2, [0.2 0.6],[]);
subplot(3,3,6);
imshow(img7);
title('Adjusted contrast image');
img8 = imcomplement(img2);
subplot(3,3,7);
imshow(img8);
title('Complemented image');
end