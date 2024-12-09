clear all
close all
format long
x=linspace(1,100,5);
a=1;
b=100;
n=5;
h=((b-a)/(n-1));
F=@(x) log(x);
P=F(x);
for i=1:n
    L=[1];
    for j=1:n
        if j~=i
            L=conv(L,F(x(j)));
            L=L/(F(x(i))-F(x(j)));
        end
    end
    
end
disp(P)
plot(x,P,x,log(x))
