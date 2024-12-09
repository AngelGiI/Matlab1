clear all
close all
M = [5,2,3;1,4,7;8,9,6];
f=@(M) det(M);
X=eig(M);
n=length(eig(M));
a=1;
sol=1;
while a<n+1
    sol=sol*X(a,1);
    a=a+1;
end
disp(f(M))
disp(sol)