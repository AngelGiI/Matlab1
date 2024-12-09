% ejercicio 2 (Hoja 1)
% metodo de biseccion
clear all
close all

f = @(x) sqrt(x)*sin(x) - x^3 + 2;
a = 1;
b = 2;
iteraciones = 0;
while f(a)*f(b) < 0
    c = (a + b) / 2;
    if f(c)*f(b) < 0
        a = c;
        iteraciones = iteraciones +1;
    else 
        b = c;
        iteraciones = iteraciones +1;
    end
    error = (1)/(2^(iteraciones+1));
    if error < 10^(-10)
        break
    end
end
format long
disp('el error es')
error
disp('el numero de iteraciones es')
iter
disp('la raiz de la ecuacion es:')
c
disp('valor de la funcion')
f(c)