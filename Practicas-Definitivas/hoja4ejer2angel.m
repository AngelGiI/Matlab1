%Hoja 4 - ejercicio 2: Normas matriciales
clear all
close all

format long
A=input('Introduzca una matriz cuadrada: ');
%norma 1
suma =0;
for i=1:length(A)
    suma2=0;
    for j=1:length(A)
        suma2=suma2+A(j,i);
    end
    if suma2>suma
        suma=suma2;
    end
end
norma1=suma
%norma 2
norma2=max(abs(eig(A*A')))^(1/2)
%norma infinito
suma3=0;
for i=1:length(A)
    suma4=0;
    for j=1:length(A)
        suma4=suma4+A(i,j);
    end
    if suma4>suma3
        suma3=suma4;
    end
end
normaInfinito=suma3
%norma Frobenius
normaFrobenius=(trace(A*A'))^(1/2)