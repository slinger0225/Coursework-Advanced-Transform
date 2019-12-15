function compress_signal()
t=0:1/8:7/8;
subplot(3,1,1);
plot(dwt_haar(testsig(t),1));
title('Step 1 DWT of s(t)');
subplot(3,1,2);
plot(dwt_haar(testsig(t),2));
title('Step 2 DWT of s(t)');
subplot(3,1,3);
plot(dwt_haar(testsig(t),3));
title('Step 3 DWT of s(t)');
end