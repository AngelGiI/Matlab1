clear all
close all
format long;
M=[10,2,-3,4;25,6,17,8;9,10,-11,12;13,14,15,16];
determinante1=det(M);
autovalores=eig(M);
determinante2=1;
for i=1:4
    determinante2=determinante2*autovalores(i);
end
determinante1, determinante2

    
    
