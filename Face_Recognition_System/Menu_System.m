%This m-file Creates a menu System for the Codes for better User Interface
M=1; %Creating menu system for better user interface
while M==1 || M==2 || M==3 || M==4 || M==5 || M==6 || M==7 || M==8
M=menu('Neural Network Toolbox','Select image','Create Network','watch the plane topology','Test from Webcam','watch the hits for the image','Test the image', 'End face recognition System');

switch M
    
    case 1
        [X,P]=uigetfile('*.jpg','**Pick an image file**','multiselect','on'); %using user interface to select image files from image databse
       
    case 2
        Neural_Network; %redirects the code to another m-file for creating a network
      
    case 3
        
       plotsomplanes(net); %Shows the plot for intensity of weights of the created network
       xlabel('weights of Network');
    
    
    case 4
        vid=videoinput('winvideo',1,'YUY2_320x240'); %Initiates videoinput from Webcam of the computer
        preview(vid);
        pause(5.0); %Delay by 5seconds for the user to self adjust before obtaining the snapshot of his face
        a=ycbcr2rgb(getsnapshot(vid)); %Obtains Snapshot of the Face after 5second delay
        imshow(a); 
        y1=a;
        Image_Preprocessing; %Redirects to another m-file for Preprocessing the Obtained image
        Image_Test; %Redirects to another m-file for Testing the image

        if n>4500; %Compares n value with the set threshold value
           msgbox('Authorized User. Welcome'); 
           implay('Facial Recognition.avi');
        else
            msgbox('Unauthorized user');
        end;
        close all;
      break;
   
      
    case 5
        y1=imread(strcat(P,X)); %Reads the image Obtained using user interface after selecting an image
        Image_Preprocessing;% Preprocessing of image
        plotsomhits(net,u); %Shows the Plot for the specific hits of an image with image database
    
    case 6
        y1=imread(strcat(P,X)); %Reads the image Obtained using user interface after selecting an image
        Image_Preprocessing;% Preprocessing of image
        
        Image_Test; %Testing the image

        if n>4500; % Comparing the n value of the image with the set threshold value
           msgbox('Authorized User. Welcome');
           implay('Facial Recognition.avi');
        else
            msgbox('Unauthorized user');
        end;
      break;
        
    otherwise
        msgbox('Thank you for using the security system');
       break;
end;
end;