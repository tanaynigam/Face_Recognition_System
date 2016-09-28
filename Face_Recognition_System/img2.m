clc;
close all;
y1 = imread('Picture0001.jpg');
img;

net=newsom(u,[8 8]);
t1=u;


y1 = imread('Picture0002.jpg');
img;
net=train(net,u);
t2=u;


y1 = imread('Picture0003.jpg');
img;
net=train(net,u);
t3=u;


y1 = imread('Picture0004.jpg');
img;
net=train(net,u);
t4=u;


y1 = imread('Picture0005.jpg');
img;
net=train(net,u);
t5=u;


y1 = imread('Picture00011.jpg');
img;
net=train(net,u);
t6=u;


y1 = imread('Picture00012.jpg');
img;
net=train(net,u);
t7=u;


y1 = imread('Picture00013.jpg');
img;
net=train(net,u);
t8=u;


y1 = imread('Picture00014.jpg');
img;
net=train(net,u);
t9=u;


y1 = imread('Picture00015.jpg');
img;
net=train(net,u);
t10=u;
