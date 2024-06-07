% Load the image
original_image = imread('spine.tif'); % Replace 'your_image.jpg' with the filename of your image
original_image = double(original_image); % Convert to double for calculations

% Display the original image
subplot(1,4,1);
imshow(uint8(original_image));
title('Original Image');

% Apply the power-law transformation for gamma = 0.6
transformed_image1 = uint8(255 * (original_image / 255).^0.6);
subplot(1,4,2);
imshow(transformed_image1);
title(sprintf('Gamma = 0.6'));

% Apply the power-law transformation for gamma = 0.4
transformed_image2 = uint8(255 * (original_image / 255).^0.4);
subplot(1,4,3);
imshow(transformed_image2);
title(sprintf('Gamma = 0.4'));

% Apply the power-law transformation for gamma = 0.3
transformed_image3 = uint8(255 * (original_image / 255).^0.3);
subplot(1,4,4);
imshow(transformed_image3);
title(sprintf('Gamma = 0.3'));

imwrite(transformed_image1,'transformed_image1.png')
imwrite(transformed_image2,'transformed_image2.png')
imwrite(transformed_image3,'transformed_image3.png')

