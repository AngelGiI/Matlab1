clear all
close all
M = [1,2,3;4,5,6;7,8,9];
one = norm(M,1);
inf = norm(M,Inf);
fro = norm(M,'fro');
disp(one)
disp(inf)
disp(fro)
i=1;
j=1;
sz=size(M);
norma1=0;
norma=0;
while i-1<sz
    v = M(:,i);
    while j<sz
        norma=norma+v(j);
        j=j+1;
    end
    if norma1<norma
       norma1=norma;
    end
    i=i+1;
end
