function r = comp_ratio_FFT(threshold)
% Measure compression ratio

% First generate the test signal
im = imreadreal('lena.bmp');
% Now compress the signal
fx=fft(im);

% Keep only sufficiently large values of fx
s_out = fx .* (abs(fx)>=threshold);

% Calculate "compression ration", i.e.
% (number of non-zeros out) / (number of non-zeros in)
% For this measure, smaller is better compression
r = nnz(s_out) / nnz(im);

% Done