close all
n = 3;
A=zeros(n);
b=zeros(n,1);
u=zeros(n,1);
w=0.1;
k=7;
D=diag(diag(A));
for i=1:n
    b(i)=1/i;
    for j=1:n
        if j~=i
            A(i,j)=((-1)^(i+j))/(i+j);
        else
            A(i,i)= 20+i;
        end
    end
end
E=tril(-A)+D;
F=triu(-A)+D;
for i=1:k
    r=b-A*u;
    u=u+(D)*r;
end
u