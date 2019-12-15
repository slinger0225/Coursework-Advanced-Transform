function d = distortion(threshold,step)
% Measure distortion due to compression

% First generate the test signal
N = 1024-1;			% Number of samples
t = (0:N)/(N+1);	% Time scale
s = testsig(t);	% Signal
%im = imreadreal('lena.bmp');

% Compress the signal
s_compressed = compress(s,threshold,step);

% Recover the signal
s_restored = uncompress(s_compressed,step);

% Calculate the distortion, i.e.
% Norm of distance between output and input signal
d = norm(s_restored-s);

% Done