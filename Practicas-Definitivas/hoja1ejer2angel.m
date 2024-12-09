%Hoja 1 - Ejercicio 2: M�todo de bisecci�n.
clear all
close all

format long
f=@(x)sqrt(x)*sin(x)-x^3+2;
a=1;
b=2;
iter=0;
while f(a)*f(b)<0
    c=(a+b)/2;
    if f(c)*f(b)<0
        a=c;
        iter=iter+1;
    else
        b=c;
        iter=iter+1;
    end
    error=1/(2^(iter));
    if error<10^(-10)
        break
    end
end
disp('el error es:')
error
disp('el n�mero de iteraciones es:')
iter
disp('la ra�z de la ecuaci�n es:')
c
disp('el valor de la funci�n es:')
f(c)