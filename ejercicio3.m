%Hoja 1 - Ejercicio 3: Punto fijo y Newton.
%Por: Ángel Gil
clear all
close all

f = @(x) (x^5+1)/5;
g = @(y)(y^5+5y+1)/(5y^4+5);
e = @;
x0 = -1;
y0 = -1; 
k=1;
l=1;
iter = 6;
precision = 10^(-12);
format long
while k<iter
    x0 = f(x0);
    k = k+1;
end
while l<iter
    y0 = g(y0);
    l = l+1;
end
for x=
