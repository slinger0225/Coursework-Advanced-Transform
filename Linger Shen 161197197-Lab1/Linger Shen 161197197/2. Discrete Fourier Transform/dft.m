function sw=dft(st)
M=length(st);
N=M;
WN=exp(2*pi*1i/N);

for n=0:N-1
    temp=0;
    for m=0:M-1
        temp=temp+st(m+1)*WN^(-n*m);
    end
    sw(n+1)=temp;
end
