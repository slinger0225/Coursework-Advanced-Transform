
function tictoc()
for n=1:64
tic;for(i=1:1e4) dft(ones(1,n));end;toc
t1(n)=toc;
x1(n)=n;
end


for n=1:64
  tic;for(i=1:1e4) fft(ones(1,n));end;toc
t2(n)=toc;
x2(n)=n;
end
loglog(x1,t1);
hold on;
loglog(x2,t2);  
legend('dft','fft');
hold off;
    
