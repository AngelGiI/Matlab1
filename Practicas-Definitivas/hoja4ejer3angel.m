%Hoja 4 - ejercicio 3: A*v & w*A
clear all
close all

format long
A=input('Introduzca una matriz cuadrada: ');
%Apartado a)
V=input('Introduzca un vector columna: ');
sol_a=[0;0;0];
for i=1:length(A)
    for j=1:length(A)
        sol_a(i)=sol_a(i)+A(i,j)*V(j);
    end
end
disp('sol A*v')
sol_a
%Apartado b)
W=input('Introduzca un vector fila: ');
sol_b=[0 0 0]
for i=1:length(A)
    for j=1:length(A)
        sol_b(i)=sol_b(i)+W(j)*A(j,i);
    end
end
disp('solucion w*A')
sol_b
