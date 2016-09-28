y2=rgb2gray(y1);
y3=imresize(y2,[512 512]);
fun = @(block1) dct2(block1.data,[8 8]);
y4=blockproc(y3,[8 8],fun);
mask=[1 1 1 1 0 0 0 0
      1 1 1 0 0 0 0 0
      1 1 0 0 0 0 0 0
      1 0 0 0 0 0 0 0
      0 0 0 0 0 0 0 0
      0 0 0 0 0 0 0 0
      0 0 0 0 0 0 0 0
      0 0 0 0 0 0 0 0];
fun2= @(block_struct) mask.*block_struct.data;
y5=blockproc(y4,[8 8],fun2);


rows=512;
columns=512;
blockSizeR = 8;
blockSizeC = 8;
blockVectorR = [blockSizeR * ones(1, 64)];
blockVectorC = [blockSizeC * ones(1, 64)];
a=mat2cell(y5, blockVectorR, blockVectorC);

for i=1:64;
    for j=1:64;
        b=a{i,j};
        t(1)=b(1,1);
        t(2)=b(1,2);
        t(3)=b(1,3);
        t(4)=b(1,4);
        t(5)=b(2,1);
        t(6)=b(2,2);
        t(7)=b(2,3);
        t(8)=b(3,1);
        t(9)=b(3,2);
        t(10)=b(4,1);
        u1{i,j}=t;
    end;
end;


u2=cell2mat(u1);
u3=u2(:);
u=u3';
