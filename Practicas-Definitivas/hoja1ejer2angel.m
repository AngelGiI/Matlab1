%Hoja 1 - Ejercicio 2: Método de bisección.
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
disp('el número de iteraciones es:')
iter
disp('la raíz de la ecuación es:')
c
disp('el valor de la función es:')
f(c)