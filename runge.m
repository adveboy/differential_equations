function E = runge(f, a, b, ya, M)
    h = (b-a)/M;
    T = a:h:b;
    Y = zeros(1, M+1);
    Y(1) = ya;
    for j = 1:M
        k1 = f(T(j), Y(j));
        k2 = f(T(j) + h/2, Y(j) + (h/2)*k1);
        k3 = f(T(j) + h/2, Y(j) + (h/2)*k2);
        k4 = f(T(j) + h, Y(j) + h*k3);
        Y(j+1) = Y(j) + (1/6)*h*(k1 + 2*k2 + 2*k3 + k4);
    end
    E = [T', Y'];
end