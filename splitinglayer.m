%splitting layer
[file,path]=uigetfile('*.jpg','select image');
I=imread(fullfile(path,file));

s=size(I);
disp(s);

s=size(I);
Ir=I(:,:,1);
Ig=I(:,:,2);
Ib=I(:,:,3);
subplot(2,4,1),imshow(I),title('RBG Channel');
subplot(2,4,2),imshow(Ir),title('Red Channel');
subplot(2,4,3),imshow(Ig),title('Green Channel');
subplot(2,4,4),imshow(Ib),title('Blue Channel');
subplot(2,4,5),image(I),title('RBG Channel');
subplot(2,4,6),image(I(:,:,1)),title('Red Channel');
subplot(2,4,7),image(I(:,:,2)),title('Green Channel');
subplot(2,4,8),image(I(:,:,3)),title('Blue Channel');
