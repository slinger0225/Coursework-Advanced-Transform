function r = comp_ratio_FFT(threshold)
% Measure compression ratio

% First generate the test signal
N = 1024-1;			% Number of samples
t = (0:N)/(N+1);	% Time scale
s = testsig(t);	% Signal
%im = imreadreal('lena.bmp');
% Now compress the signal
fx=fft(s);

% Keep only sufficiently large values of fx
s_out = fx .* (abs(fx)>=threshold);

% Calculate "compression ration", i.e.
% (number of non-zeros out) / (number of non-zeros in)
% For this measure, smaller is better compression
r = nnz(s_out) / nnz(s);

% Done