vid=videoinput('winvideo',1,'YUY2_1000x1000');
preview(vid);
pause(5.0);
a=ycbcr2rgb(getsnapshot(vid));
imshow(a);
