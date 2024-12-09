%Hoja 4 - ejercicio 1: Espectro de una matriz
clear all
close all

format long
M=input('Introduzca una matriz cuadrada: ');
det1=det(M);
lambda=eig(M);
det2=1;
for i=1:length(M)
    det2=det2*lambda(i);
end
det1
det2