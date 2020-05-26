function x = mySqrt(n, N, err)
    x0 = n/2;        %x0
    for i = 1:N     %loops N times max
        x = 0.5*(x0 + n./x0); %finds x(n+1) from x(n)
        if abs(x - x0) < err    %returns if |xn−xn−1| < err
            return;
        end
        x0 = x; %sets x0 to x1
    end
end