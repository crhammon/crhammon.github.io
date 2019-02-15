%% ECI 149 HW 4 Code
% Problem 7

clear,clc

z=45;

rise=5;

H=z+rise;
u_a=4.42; % U value used for part a
u_d=3.7*(10/H)^(-1/9); % U value used for part d
x=[0:1:500];

sig_y=0.16.*x.*(1+0.0001.*x).^(-0.5);

sig_z=0.12.*x;

n=0.05./(2*pi*u_a*sig_y.*sig_z).*2.*(exp(-0.5*(-H./sig_z).^2))*10^9;
hold on
plot(x,n)

[Max, Ind] = max(n)




