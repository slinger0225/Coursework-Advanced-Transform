function y=wft(s,t,n)
s1=s(floor(t-n/2)+(1:n));
z=s1.*hanning(n);
y=fft(z);
plotWft(y,t,n);
end

