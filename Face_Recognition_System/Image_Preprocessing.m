%This file pre processes each image using dct compression

y2=rgb2gray(y1); %Convert image to grayscale
y3=imresize(y2,[512 512]); %Resize image to 512x512

%Application of Discrete Cosine Transform on 64 - 8x8 blocks of data of an image 
fun = @(block1) dct2(block1.data,[8 8]); %initialize function 'fun' with application of function 'dct2'
y4=blockproc(y3,[8 8],fun); %Execution of function 'fun' on blocks of 8x8 of the image matrix

%Since visually significant components of an image are concentrated in the
%top right corner of an 8x8block, we mask the rest of the components of the
%block in order to compress the image

mask=[1 1 1 1 0 0 0 0
      1 1 1 0 0 0 0 0
      1 1 0 0 0 0 0 0
      1 0 0 0 0 0 0 0
      0 0 0 0 0 0 0 0
      0 0 0 0 0 0 0 0
      0 0 0 0 0 0 0 0
      0 0 0 0 0 0 0 0]; %initialize mask value to mask out 54 values of the 64values of each 8x8block

fun2= @(block_struct) mask.*block_struct.data; %Initialize 'fun2' value with function mask.(8x8block)
y5=blockproc(y4,[8 8],fun2); %Application of mask on each 8x8block of the dct image for compression of the image


rows=512;
columns=512;
blockSizeR = 8;
blockSizeC = 8;
blockVectorR = [blockSizeR * ones(1, 64)]; %Initialize row vectors and column vectors  with values 8x8
blockVectorC = [blockSizeC * ones(1, 64)];
a=mat2cell(y5, blockVectorR, blockVectorC); %Convert the matrix of 512x512 into 64x64 cells containing matrices of 8x8blocks each

for i=1:64; %in each cell with matrix of 8x8block, discard the masked out 54values and retreive the non-masked 10values
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


u2=cell2mat(u1); %Convert the Cells back to a single matrix
u3=u2(:); %Convert all 40960 values of an image file into single column
u=u3'; %Convert all 40960 values of an image file into single row
