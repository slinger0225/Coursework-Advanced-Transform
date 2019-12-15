function specgramWithoutFs(s,nfft)
specgram(s,nfft);title('piccolo.wav NFFT=512 Normalized');ylabel('Normalized Frequency (*pi rad/sample)');
end