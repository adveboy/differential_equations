function y = euler_spec(n,a,b,y0)
    h = (b-a)/n;
    y = zeros(n,1);
    y(1) = y0;
    for cnt = 2:n+1
        y(cnt) = y(cnt-1) + h*(5*y(cnt-1) - 3);
    end
    y = [(a:h:b)',y];
end