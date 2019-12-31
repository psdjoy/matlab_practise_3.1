close all
clear all
clc
x=[1 2 3 4];
y=[1 4 9 16];
n=length(x);
p=0;v=1;
for i=1:n
    for j=1:n
        if i~=j v=conv(v,(poly(x(j))/(x(i)-x(j))));
        end
    end
    p=p+y(i)*v;
    v=1;
end
xn=x(1):0.1:x(end);
yn=polyval(p,xn);
plot(x,y,'*')
hold on
plot(xn,yn)
