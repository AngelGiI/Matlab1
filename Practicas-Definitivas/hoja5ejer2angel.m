%Hoja 5 - ejercicio 2: Factorización LU
clear all
close all

A=input('introduzca una matriz cuadrada: ');
U=zeros(3);
L=zeros(3);
for i=1:3
    for j=1:3
        U(i,j)=A(i,j);
        for k=1:i-1
            U(i,j)=U(i,j)-L(i,k)*U(k,j);
        end
    end
    for j=1:3
        L(j,i)=A(j,i);
        for k=1:i-1
            L(j,i)=L(j,i)-L(j,k)*U(k,i);
        end
        L(j,i)=L(j,i)/U(i,i);
    end
end
U
L