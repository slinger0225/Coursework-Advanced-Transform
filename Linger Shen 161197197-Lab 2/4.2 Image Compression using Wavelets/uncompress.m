function x = uncompress(y,step)
% Compress signal using some function
% transformed signal values below threshold will be removed
%
% DO OPPPOSITE OF "COMPRESS" TRANSFORM HERE
x=idwt2_haar(y,step);

end
