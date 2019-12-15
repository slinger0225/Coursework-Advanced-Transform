function plotWave
s1=audioread('dbarrett2.wav');
s2=audioread('vmatthew2.wav');
subplot(2,1,1);
plot(fftshift(abs(fft(s1))));
title('FFT-Male');
subplot(2,1,2);
plot(fftshift(abs(fft(s2))));
title('FFT-Female');

end