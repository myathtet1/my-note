[filename,pathname]=uigetfile('*.*','select image');
location=strcat(pathname,filename);


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
subplot(5,5,2),imshow(),title("");
subplot(5,5,3),imshow(),title("");
subplot(5,5,4),imshow(),title("");
subplot(5,5,5),imshow(),title("");
subplot(5,5,6),imshow(),title("");
subplot(5,5,7),imshow(),title("");
subplot(5,5,8),imshow(),title("");
subplot(5,5,9),imshow(),title("");
subplot(5,5,10),imshow(),title("");
subplot(5,5,11),imshow(),title("");
subplot(5,5,12),imshow(),title("");
subplot(5,5,13),imshow(),title("");
subplot(5,5,14),imhist(Input),title("input");
subplot(5,5,15),imhist(),title("");
subplot(5,5,16),imhist(),title("");
subplot(5,5,17),imhist(),title("");
subplot(5,5,18),imhist(),title("");
subplot(5,5,),imhist(),title("");
subplot(5,5,),imhist(),title("");
subplot(5,5,),imhist(),title("");
subplot(5,5,),imhist(),title("");
subplot(5,5,),imhist(),title("");
subplot(5,5,),imhist(),title("");
subplot(5,5,),imhist(),title("");
subplot(5,5,),imhist(),title("");
subplot(5,5,),imhist(),title("");










