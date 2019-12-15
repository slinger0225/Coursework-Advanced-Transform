function recoverLena(step)
im = imreadreal('lena.bmp');
ans=dwt2_haar(im, step);
ans=idwt2_haar(ans,step);
imagesc(ans); 
colormap gray; 
axis image;
end