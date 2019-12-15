function plotWft(y,t,n)
subplot(2,1,1);
plot(fftshift(abs(y))); 
title(['dbarrett2.wav  t= ',num2str(t) ' n= ',num2str(n)]);
subplot(2,1,2);
semilogy(fftshift(abs(y)));
title(['logy t= ',num2str(t) ' n= ',num2str(n)]);

end

