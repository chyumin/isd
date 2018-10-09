clc; clear;
pkg load signal;
fs = 1000;            % Sampling frequency                    
T = 1/fs;             % Sampling period       
L = 1500;             % Length of signal
t = (0:L-1)*T;        % Time vector

% Ordem do filtro
n = 10


s = 0.7*sin(2*pi*50*t) + sin(2*pi*120*t);

fc = 50;

[b,a] = butter(10, 2*fc*2/fs,'low');

y = filtfilt(b,a,s);

figure
subplot(2,1,1)
plot(y)

subplot(2,1,2)
plot(s)