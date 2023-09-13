a=imread('ypo.jpg.jfif'); %input image
b=a+25; % brightness increase
c=a-255; % brightness decrease
d=rgb2gray(a); %grayscale image
e=255-d; % negative image
f=255-e; % negative inverse
g=a*25; % contract increase
h=a*0.25; % contract decrease
subplot(4,4,1),imshow(a),title("input");
subplot(4,4,2),imshow(b),title("brightness increase");
subplot(4,4,3),imshow(c),title("brightness decrese");
subplot(4,4,4),imshow(d),title("grayscale");
subplot(4,4,5),imhist(a),title("histogram of input");
subplot(4,4,6),imhist(b),title("histogram of BI");
subplot(4,4,7),imhist(c),title("histogram of BD");
subplot(4,4,8),imhist(d),title("histogram of GI");
subplot(4,4,9),imshow(e),title("negative");
subplot(4,4,10),imshow(f),title("negative inverse");
subplot(4,4,11),imshow(g),title("contant increase");
subplot(4,4,12),imshow(h),title("contant decrease");
subplot(4,4,13),imhist(e),title("histogram of NEG");
subplot(4,4,14),imhist(f),title("histogram of NI");
subplot(4,4,15),imhist(g),title("histogram of CI");
subplot(4,4,16),imhist(h),title("histogram of CD");
