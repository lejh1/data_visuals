close all;
clear;
clc;

%% Part 1 
b = [4,3,2,1,2,3,4];
a = [1];
[X,w] =DTFT(b,a);
    
%% magnitude plot
subplot(2,1,1);
plot(w/pi,(abs(X)));
xlabel('w/pi');
ylabel('amplitude');
title('magnitude plot for X(w)');

%% phase plot
subplot(2,1,2);
plot(w/pi, angle(X));
xlabel('w/pi');
ylabel('radians');
title('Phase plot for X(w)');

function [X,w]  = DTFT(b, a)

    [X,w] = freqz(b,a, 'whole');
    
end