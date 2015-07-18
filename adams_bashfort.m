function E = adams_bashfort(f, a, b, ya, M)
    %Input - f is the function entered as a string 'f'
    % - a and b are the left and right endpoints
    % - ya is the initial condition y(a)
    % - M is the number of steps
    %Output - E=[T' Y'] where T is the vector of abscissas and
    % Y is the vector of ordinates
    
    h = (b-a)/M;
    T = zeros(1, M+1);
    Y = zeros(1, M+1);
    T = a:h:b;
    Y(1) = ya;
    Y(2) = Y(1) + h*f(T(1), Y(1));
    for j = 1:M-1
        Y(j+2) = Y(j+1) + 1.5*h*f(T(j+1), Y(j+1)) - 0.5*h*f(T(j), Y(j));
        %Y(j+1) = Y(j) + h*(5*Y(j) - 3);
    end
    E = [T', Y'];
end
    