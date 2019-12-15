function y = compress(x, threshold,step)
% Compress signal using some function
% transformed signal values below threshold will be removed
%
% DO SOMETHING TO THE SIGNAL HERE
fx=dwt2_haar(x,step);
% DONE

% Keep only sufficiently large values of fx
y = fx .* (abs(fx)>=threshold);

% Done