%This code compares the coordinates of hits of the test image to
%coordinates of hits of the image in the databse and updates the value of n


ntemp=0; %initializing a temporary n value
for i=1:64;
    for j=1:40960;
        if r(i,j)==routput(i,j) && r(i,j)==1; %Compares the hit coordinates of both the images
            ntemp=ntemp+1; %Updates the value of ntemp for each successful match
        end;
    end;
end;

if ntemp>=n; %If the number of similar hits of the test image with the current image from database,
    n=ntemp; %exceeds the number of similar hits of the test image with previous image from the database,
end; %Then replace n with the current value of ntemp

