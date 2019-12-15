function dwtOfLena(step)
im = imreadreal('lena.bmp');
ans=dwt2_haar(im, step);
imagesc(ans); 
colormap gray; 
axis image;
end