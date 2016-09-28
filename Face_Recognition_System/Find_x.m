%Since the Coordinates of hits in a Simulated matrix are non-editable,
%It is required to Obatin a value of x which contains the value of a hit,
%To process the Simulated matrix in editable format

o2=cell2mat(k{1}); %Obtain the pre-processed matrix of the first image
o1=sim(net,o2); %simulate the the pre-processed image with neural network created and store the coordinates of hits in 'o1'
for i=1:64; %loop all the value of the matrix
    for j=1:40959;
        if o1(i,j)~=o1(i,j+1); %compare the hit values of the matrix to their immediate hit values
            x1=o1(i,j); %transfer a hit value to x1, if the immediate values are different
            x2=o1(i,j+1); %transfer the 2nd hit value to x2
            break; %break the loop at the first change in immediate values
        end;
    end;
end;

n1=0; %initialize n1 and n2
n2=0;

for i=1:64; %for all hit values, count the number of hit values in the matrix
    for j=1:40960;
        if o1(i,j)==x1;
            n1=n1+1;
        else
            n2=n2+1;
        end;
    end;
end;

if n1==40960; %Since for single hits, there are supposed to be only 40960 hits in a matrix, count the number of n1 and n2
    x=x1; %if n1 is 40960, then transfer x1 to x
else
    x=x2; %else if n2 is 40960, transfer x2 to x
end;