close all;
clear;
clc;

%% Part a
N = (0:1:20)';
x = N>= 0; %input function(Unit step)

b = .5.^(0:5); %Numerator
a = [1, -(1/3).^(1:5)]; %Denominator

[b0, B, A] = dir2cas(b,a); %Direct form to Cascade
y = casfiltr(b0, B, A, x)' %Cascade Realization 

%% Part b

f = filter(b,a,x)

%% Plots 
subplot(2,1,1);
plot(y)
title('Plot for part a');
subplot(2,1,2);
plot(f)
title('Plot for part b');
