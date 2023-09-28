%hard thresholding
close all;
clear all;
clc;
[file,path]=uigetfile('*.*','select image');
t=input('enter threshold level:');
I=imread(fullfile(path,file));
ig=rgb2gray(I);
ir=imresize(ig,[300 300]);
[m n]=size(ir);
for i=1:m              
    for j=1:n
        if ir(i,j)<=t
           it(i,j)=0;
        else
           it(i,j)=1;
        end
    end
end
subplot(1,2,1);imshow(ir);title("Oringinal image");
subplot(1,2,2);imshow(it);title("Threshold image");