clc; clear;
pkg load signal;

fs = 4000;

load 'mep.txt';

sinal = mep(:, 1);
trigger = mep(:, 2)*100;
figure(1);
plot(sinal);
hold on;
plot(trigger);

% [pks, locs] = findpeaks(sinal, 'MinPeakHeight', 70);

locs = [4607 24113 43619 63125 82631 102137 121643 141149];

windowed_signals = [];

for i = locs
  windowed_signals = [windowed_signals, sinal(i-200:i+400)];
end

media = mean(windowed_signals');

figure(2);
plot(media);


convolved_signal = conv(sinal, media);

figure(1);
plot(convolved_signal);