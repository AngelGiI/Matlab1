%Hoja 1 - Ejercicio 1: Error por cancelaci�n.
clear all
close all

format long
g=@(x) sqrt(3+x)-sqrt(3);
f=@(x) x/(sqrt(3+x)-sqrt(3));
x=0.1;
maxk=1000;
for  k = 2:maxk
    x = x/10;
    if g(x) == 0
        break
    end
    disp('g(x)')
    g(x)
    disp('f(x)')
    f(x)
end
disp('la p�rdida de precisi�n por cancelaci�n ocurre para:')
k