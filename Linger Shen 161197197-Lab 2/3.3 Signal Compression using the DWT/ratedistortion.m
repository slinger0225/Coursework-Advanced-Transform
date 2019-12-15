function ratedistortion(maxthreshold)
% Plot rate-distortion curve up to max threshold
%
nsteps = 20+1;	% Set the number of steps to plot

step = maxthreshold/(nsteps-1);	% Size of each step
% Create empty rate and distortion vectors 
ratevec = [];
distvec = [];

% Loop for each value of the threshold
for threshold=0:step:maxthreshold
   % Add the compression ratio to the "rate" curve
   ratevec = [ratevec comp_ratio(threshold,0)];
   % Add the distortion value to the "distortion" curve
   distvec = [distvec distortion(threshold,0)];
end
% Plot the curves ('-o' means line with a circle at each plot point)
plot(ratevec,distvec,'-o');
hold on;

ratevec = [];
distvec = [];
for threshold=0:step:maxthreshold
   % Add the compression ratio to the "rate" curve
   ratevec = [ratevec comp_ratio(threshold,2)];
   % Add the distortion value to the "distortion" curve
   distvec = [distvec distortion(threshold,2)];
end
% Plot the curves ('-o' means line with a circle at each plot point)
plot(ratevec,distvec,'-o');
hold on;

ratevec = [];
distvec = [];
for threshold=0:step:maxthreshold
   % Add the compression ratio to the "rate" curve
   ratevec = [ratevec comp_ratio(threshold,4)];
   % Add the distortion value to the "distortion" curve
   distvec = [distvec distortion(threshold,4)];
end
% Plot the curves ('-o' means line with a circle at each plot point)
plot(ratevec,distvec,'-o');
hold on;


ratevec = [];
distvec = [];
for threshold=0:step:maxthreshold
   % Add the compression ratio to the "rate" curve
   ratevec = [ratevec comp_ratio(threshold,8)];
   % Add the distortion value to the "distortion" curve
   distvec = [distvec distortion(threshold,8)];
end
% Plot the curves ('-o' means line with a circle at each plot point)
plot(ratevec,distvec,'-o');
legend('step=0','step=2','step=4','step=8');
hold off;
% Label the graph
xlabel('Compression Ratio (1 = no compression)');
ylabel('Distortion');
title('rate-distortion curve')