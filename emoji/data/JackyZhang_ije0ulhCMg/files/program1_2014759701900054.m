%MATLAB Assignment 1
%Name: Jacky Zhang
%ID: 33866225
close all;
clear;
clc;

%problem 1 

x = [4, 3, 2, 1, 2, 3, 4];
n = [-3, -2, -1, 0, 1, 2, 3];
w = -pi:pi/4:pi;
H = dtft(x,n,w)
phase = angle(H)
magn = abs(H)

 
plot(phase, magn)
xlabel('phase')
ylabel('magn')
title('Polynomial')

input('Should we end?')
close;