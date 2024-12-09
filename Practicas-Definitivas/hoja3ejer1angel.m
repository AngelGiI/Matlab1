%Hoja 3 - ejercicio 1: Punto medio
clear all
close all

f=@(x) 1/x;
a=1;
b=2;
mmax=1000;
sum=0;
for m=1:mmax
    h=(b-a)/m;
    x=linspace(a,b,m+1);
    for i=1:m
        sum=sum+f((x(i)+x(i+1))/2);
        sum=h*sum;
    end
    if sum<10^(-3)
        break
    end
end
sum
m