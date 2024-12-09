%Hoja 2 - Ejercicio 1: Interpolación de Lagrange.
%Por: Ángel Gil
clear all
close all

format long
x=linspace(1,100,5);
a=1;
b=100;
n=5;
h=((b-a)/(n-1));
poly=@(x) log(x);
P=zeros(1,n);
for i=1:n
    L=[1];
    for j=1:n
        if j~=i
            L=conv(L,poly(x(j)));
            L=L/(x(i)-x(j));
        end
    end
    P=P+(poly(x(i))*L);
end
disp(P)
plot(P,log(x))