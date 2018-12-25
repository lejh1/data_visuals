function [X] = dtft(x,n,w)
X = x*exp(-j*n'*w);

