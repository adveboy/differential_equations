function E = euler_modified(f, a, b, ya, M, iter)
    %Input - f is the function entered as a string 'f'
    % - a and b are the left and right endpoints
    % - ya is the initial condition y(a)
    % - M is the number of steps
    %Output - E=[T' Y'] where T is the vector of abscissas and
    % Y is the vector of ordinates
    Y1 = euler(f, a, b, ya, M);
    Y1 = Y1(:,2);
    h = (b-a)/M;
    T = zeros(1, M+1);
    Y = zeros(1, M+1);
    T = a:h:b;
    Y(1) = ya;
    for cnt = 1:iter
        for j = 1:M
            f1 = f(T(j) , Y(j));
            f2 = f(T(j+1), Y1(j+1));
            Y(j+1) = Y(j) + h*(f1 + f2)/2;
        end
        Y1 = Y;
    end
    E = [T', Y'];
end