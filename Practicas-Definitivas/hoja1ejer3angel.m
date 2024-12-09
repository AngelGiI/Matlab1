%Hoja 1 - Ejercicio 3: Punto fijo y Newton.
clear all
close all

format long
F=@(x) -(x^5+1)/5;
G=@(y) y-(y^5+5*y+1)/(5*y^4+5);
iter=50;
k=1;
c=1;
x0=-1;
y0=-1;
while k<iter
    if abs(x0-F(x0))<10^(-12)
        break
    end
    x0=F(x0);
    k=k+1;
end
while c<iter
    if abs(y0-G(y0))<10^(-12)
        break
    end
    y0=G(y0);
    c=c+1;
end
disp('la soluci�n de la ecuaci�n Y es:')
F(x0)
disp('la soluci�n de la ecuaci�n G es:')
G(y0)
disp('El n� de iteraciones de Y es:')
k
disp('El n� de iteraciones de G es:')
c