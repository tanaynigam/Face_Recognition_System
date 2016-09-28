o1=sim(net,t1);

for i=1:64;
    for j=1:40959;
        if o1(i,j)~=o1(i,j+1);
            x1=o1(i,j);
            x2=o1(i,j+1);
            break;
        end;
    end;
end;

n1=0;
n2=0;

for i=1:64;
    for j=1:40960;
        if o1(i,j)==x1;
            n1=n1+1;
        else
            n2=n2+1;
        end;
    end;
end;

if n1==40960;
    x=x1;
else
    x=x2;
end;