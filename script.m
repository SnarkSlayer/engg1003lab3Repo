%VARIABLE INITIALISATION
N = 1:20;   %value of N for mySqrt func
n = 323158; %value to be rooted
err = 1e-3; %value of difference between iterations that mysqrt stops looping
f = zeros(1,20);
%=======================


%CALL MYSQRT
for i = N
    f(1,i) = mySqrt(n,i,err);   %calls the mySqrt function for each N
end
%===========


%CALCULATE ERROR
error = abs(f - sqrt(n));       %finds the "absolute error"
%===============


%PLOT
semilogy(N, error);     %plots the results
%====