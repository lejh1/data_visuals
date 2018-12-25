close all;
clear;
clc;

%% part2
b = [2,1];
a = [1,.25,-.25];
[H,w] = freqz(b,a,'whole', 2000);

subplot(2,1,1);
plot(w/pi,(abs(H)));
xlabel('w/pi');
ylabel('amplitude');
title('magnitude plot for H(w)');

subplot(2,1,2);
plot(w/pi, angle(H));
xlabel('w/pi');
ylabel('radians');
title('Phase plot for H(w)');


