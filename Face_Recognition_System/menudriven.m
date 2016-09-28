M=1;
while M==1 || M==2 || M==3 || M==4 || M==5 || M==6 || M==7 || M==8
M=menu('Neural Network Toolbox','Select an image','Create Network','Transfer to database','watch the plane topology','watch compressed image','Obtain test image','watch the hits for the image','Test the image', 'End face recognition System');

switch M
    
    case 1
        [X,P]=uigetfile('*.jpg','**Pick an image file**');
       y1=imread(strcat(P,X));
       img;
       
    case 2
        net=newsom(u,[8 8]);
        
    case 3
      
        net=train(net,u);
      
    case 4
        
       plotsomplanes(net);
       xlabel('weights due to the present input');
    
    case 5
        fun3= @(block_struct) idct2(block_struct.data,[8 8]);
        y6=blockproc(y5,[8 8],fun3);
        y7=uint8(y6);
        imshow(y7);
        
    case 6
        vid=videoinput('winvideo',1,'YUY2_320x240');
        preview(vid);
        pause(5.0);
        a=ycbcr2rgb(getsnapshot(vid));
        imshow(a);
        y1=a;
        img;
        
    case 7
        plotsomhits(net,u);
    
    case 8
        imgtest;

        if n>4500;
           msgbox('Authorized User. Welcome');
        else
            msgbox('Unauthorized user');
        end;
        
    otherwise
        msgbox('Thank you for using the security system');
        
end;
end;