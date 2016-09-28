%This part of the code is used for processing the images from database
%After Creation of Network

Find_x; %call an m-file for processing the value of a variable x which stores the value of a single hit of an image with the network 

for l=1:g; %loop for the number of images
o1=cell2mat(k{l}); %Obtain the pre-processed matrices of each image
o=sim(net,o1); %Simulate each image wth the network and store the coordinates of hits in 'o'
Image_Conversion; %Call m-file 'Image_Conversion'
p{l}={r}; %Store the matrix in editable formats in cells of 'p'

end;
