clear all
close all
f=@(x) log(x);
x=linspace(1,100,5);
y=f(x);
plot(x,y,'r*')
hold on
x=linspace(1,100,5);
y=f(x);
plot(x,y,'g')