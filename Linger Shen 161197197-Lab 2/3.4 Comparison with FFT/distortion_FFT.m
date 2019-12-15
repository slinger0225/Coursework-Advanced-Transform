function d = distortion_FFT(threshold)
% Measure distortion due to compression

% First generate the test signal
N = 1024-1;			% Number of samples
t = (0:N)/(N+1);	% Time scale
s = testsig(t);	% Signal
%im = imreadreal('lena.bmp');
% Compress the signal
fx=fft(s);
% DONE

% Keep only sufficiently large values of fx
s_compressed = fx .* (abs(fx)>=threshold);

% Recover the signal
s_restored=ifft(s_compressed)

% Calculate the distortion, i.e.
% Norm of distance between output and input signal
d = norm(s_restored-s);

% Done