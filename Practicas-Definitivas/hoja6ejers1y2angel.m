%Hoja 6 - ejercicios 1 y 2: Metodos de resolucion sistemas lineales
clear all
close all

n=input('Introduzca la dimensión de la matriz');
A=zeros(n);
for i=1:n
    for j=1:n
        if i==j
            A(i,i)=20+i;
        end
        if i~=j
            A(i,j)=((-1)^(i+j))/(i+j);
        end 
    end
end
A
b=zeros(n,1);
for i=1:n
    b(i,1)=1/i;
end
D=diag(diag(A));
E=(tril(-A))+D;
F=(triu(-A))+D;
u=input('u0')
h=u;
%Jacobi
for i=1:1000
    r=b-(A*h);
    h=inv(D)*(E+F)*h+inv(D)*b;
    if norm(r)<10^(-10)
        break
    end
end 
h
%Gauss-Siedel
for i=1:1000
    r=b-(A*u);
    u=u+inv(D-E)*r;
    if norm(r)<10^(-10)
        break
    end
end
u
%Gauss-Siedel relajado
w=input('v0')
m=1001;
factor=1;
W=[0.1;0.5;0.9];
for i=1:3
    v=w;
    for j=1:1000
        r=b-A*v;
        v=v+inv((D*W(i))-(1-W(i))*E)*r;
        if norm(r)<10^(-10)
            break
        end
        k=j;
    end
    if k<m
        m=k;
        factor=W(i);
    end
end
v
k
factor