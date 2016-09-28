ntemp=0;
for i=1:64;
    for j=1:40960;
        if r(i,j)==routput(i,j) && r(i,j)==1;
            ntemp=ntemp+1;
        end;
    end;
end;

if ntemp>=n;
    n=ntemp;
end;

