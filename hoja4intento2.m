clear all
close all
format long;
A=[1,2,3;4,5,6;7,8,9];
V=[5;8;2];
UU=A*V;
SOL1=[0;0;0];
for i=1:3
    SOL1(i)=A(i,1)*V(1) + A(i,2)*V(2) + A(i,3)*V(3);
end
W=[5,8,2];
SOL2=[0,0,0];
for i=1:3
    SOL2(i)=W(1)*A(1,i) + W(2)*A(2,i) + W(3)*A(3,i);
end


