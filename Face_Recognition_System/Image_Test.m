%This m-file is executed once the test image is retrieved
%It processes the test file and compares it with database

o=sim(net,u); %The coordinates of the hits of the test image is obtained after simulation with Network
Image_Conversion; %The 'Image_Conversion' m-file is called for conversion of non-editable format of the hits to editable format of the hits
routput=r; %The editable format of the hits are stored in 'routput'

%The value of n is initialized where the hits of images in the database is
%compared with the hits of the test image
%The value of n decides the authentication of image
%ie, the greater the value of n, the more authentic the test image is

n=0;

for l=1:g; %for all images in the database the number of hits of the test images are compared with the hits of daabase images
r=cell2mat(p{l}); %The hits of database images are retrieved into 'r'
blockcode; %The m-file 'blockcode' is executed for comparision of hits
end;
