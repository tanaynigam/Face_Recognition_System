%This part of the code Creates Neural Network of the images retreived
g=size(X);
g=max(g); %Obtains the number of image files selected from user interface

for l=1:g; %Loop applied to process each image
y1=imread(strcat(P,X{1,l})); %Read an image file from user interface
Image_Preprocessing; %Redirect to another m-file for preprocessing of the image

if l==1;
    net=s(u,[8,8]); %Create a new network for the first image Obtained
    k{l}={u}; %Store the processed values in temporary cells for later use
else
    net=train(net,u); %Train rest of the images with the created network
    k{l}={u}; %Store the processed values in temporary cells for later use
end;

end;

Post_Processing; %call another m-file for further processing of network