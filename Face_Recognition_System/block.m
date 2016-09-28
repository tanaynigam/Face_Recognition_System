net=newsom(b1,[8 8])
for i=1:64;
    for j=1:64;
        b=a{i,j};
        b1=reshape(b,64,1);
        b2=double(b1);
        net=newsom(b2,[8 8]);
    end
end



fun3= @(block_struct) idct2(block_struct.data,[8 8]);
y6=blockproc(y5,[8 8],fun3);
y7=uint8(y6);
imshow(y3),figure, imshow(y7);




for i=1:64;
    for j=1:64;
        b=u1{i,j};
        temp=reshape(b,[5 2]);
        temp2=imresize(temp,[3 3]);
        temp3=imresize(temp2,[1 1]);
        utemp{i,j}=temp3;
    end;
end;


temp5=cell2mat(utemp);
mage=imresize(temp5,[8 8], 'nearest');
mage2=mage(:);
u=mage2';


u2=cell2mat(u1);
u3=u2(:);
u=u3';
