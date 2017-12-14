I = im2double(imread('Image.jpg'));
figure(1)
imshow(I);
title('Image');
LEN = 21;
THETA = 11;
PSF = fspecial('motion', LEN, THETA);
blurred = imfilter(I, PSF, 'conv', 'circular');
figure(2)
imshow(blurred);
title('Blurred Image');
wnr1 = deconvwnr(blurred, PSF, 0);
figure(3)
imshow(wnr1);
title('Restored Image');
