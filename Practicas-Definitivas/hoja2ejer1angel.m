%Hoja 2 - Ejercicio 1: Interpolación de Lagrange.
clear all
close all

format long
x=linspace(1,100,5);
f=@(x) log(x);
y=f(x);
n=5;
L=0;
z=0.8:0.5:100.2;
for i=1:n
    PL=1;
    for j=1:n
        if i~=j
            p=poly(x(j));
            PL=conv(PL,p)/(x(i)-x(j));
        end
    end
    L=L+y(i)*PL;
end
g=polyval(L,z);
plot(z,g,'g')
hold on
plot(x,y,'*')
x=z;
y=f(x);
plot(x,y)