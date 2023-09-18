[filename,pathname]=uigetfile('*.*','select image');
location=strcat(pathname,filename);
%location = fullfile(pathname, filename);

%{[file,path] = uigetfile('*.png',...
               'Select image','icon.png');%}

%{[file,path] = uigetfile('*.m',...
   'Select One or More Files', ...
   'MultiSelect', 'on');%}



Input=imread(location); 
Crop=imcrop(Input,[256 256 256 256]);
% image enhancement
Gray=rgb2gray(Crop);
contract_increase=Gray*0.25; 
contact_decrease=Gray*25;
brightness_increase=Gray+0.25;
brightness_decrease=Gray-0.25;
negative=255-Gray;
histogram_equalization=hist(Gray);

% convolution and correlation

gray_double=double(Gray);
convolution=con2(Gray-double,Gray-double);
correlation=corr2(Gray-double,Gray-double);

% image transform

frequency_domain=fft2(Gray);
inverse=ifft2(Gray);

subplot(5,5,1),imshow(Input),title("input image");
subplot(5,5,2),imshow(Crop),title("crop image");
subplot(5,5,3),imshow(Gray),title("gray image");
subplot(5,5,4),imshow(contract_increase),title("contract_increase");
subplot(5,5,5),imshow(contact_decrease),title("contact_decrease");
subplot(5,5,6),imshow(brightness_increase),title("brightness_increase");
subplot(5,5,7),imshow(brightness_decrease),title("brightness_decrease");
subplot(5,5,8),imshow(negative),title("negative");
subplot(5,5,9),imshow(histogram_equalization),title("histogram_equalization");
subplot(5,5,10),imshow(convolution),title("convolution");
subplot(5,5,11),imshow(correlation),title("correlation");
subplot(5,5,12),imshow(frequency_domain),title("frequency_domain");
subplot(5,5,13),imshow(inverse),title("inverse");
subplot(5,5,14),imhist(Input),title("histogram of input");
subplot(5,5,15),imhist(Crop),title("histogram of");
subplot(5,5,16),imhist(Gray),title("histogram of");
subplot(5,5,17),imhist(contract_increase),title("histogram of contract_increase");
subplot(5,5,18),imhist(contact_decrease),title("histogram of contact_decrease");
subplot(5,5,19),imhist(brightness_increase),title("histogram of brightness_increase");
subplot(5,5,20),imhist(brightness_decrease),title("histogram of brightness_increase");
subplot(5,5,21),imhist(negative),title("histogram of negative");
subplot(5,5,22),imhist(histogram_equalization),title("histogram of histogram_equalization");
subplot(5,5,23),imhist(convolution),title("histogram of convolution");
subplot(5,5,24),imhist(correlation),title("histogram of correlation");
subplot(5,5,25),imhist(inverse),title("histogram of inverse");
