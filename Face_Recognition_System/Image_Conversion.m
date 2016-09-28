%Since the hit coordinates of the simulated images were in non-editable format, it was required to process these coordinates into editable format 
for i=1:64; %for all possible neuron-data_input coordinates, the loop is applied
    for j=1:40960;
        if o(i,j)==x; %Compare the values of the coordinates with x
            r(i,j)=1; %if the values match, add 1 to the matrix coordinate, indicating a hit in that matrix coordinate
        else
            r(i,j)=0; %if the values do not match, add 0 to the matrix
        end;
        end;
    end;