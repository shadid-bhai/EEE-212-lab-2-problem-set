%clear command window, close prev work
clc;
close all;
clear all; %remove all variables
%%
format long; %ans set to 15 decimal digits
syms f(x); %create symbolic func
f(x) = tan(x)-x;
%%
fplot(f, [-10,10]) %plotting x and y, setting y limit to [-10,10]
ax = gca;
%setting x and y location to origin
ax.XAxisLocation = 'origin';
ax.YAxisLocation = 'origin';
%turning grid on for both axes
ax.XGrid = 'on';
ax.YGrid = 'on';
%%
df = diff(f, x); %differentiating w.r. to x
x_0 = .0001; %initial value for the method
tol = 10e-5;
n = 50;
%%
i = 1;
while i<=n
    x_i = x_0 - (f(x_0)/df(x_0)); %applying formula
    if abs(f(x_i)) < tol
        disp(double(x_i));
        break;
    end
    x_0 = x_i;
    i = i+1;
end
%%
r=vpasolve(f,x); %solve for non-polynomial eqn