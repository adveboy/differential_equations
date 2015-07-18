% implement euler method
% by decreasing h we decrease the error
% x' = 5x - 3
h = 0.01;
t = 0:h:2; % x' = 5x - 3
y = zeros(size(t));
y(1) = 1; %y(0) = 1
for j = 2:numel(t)
    y(j) = y(j-1) + h*(5*y(j-1) - 3);
end
% solution is y = Ce(5t) + 0.6
% for y(0) = 1 C = 0.4
y2 = 0.4*exp(5*t) + 0.6;
sum(abs(y-y2))
plot(t,y,t,y2);

clf; plot(t,y2);
clf; plot(t,y)
%{ 
    h = 0.01;
    t = 0:h:2.2; % x' = 5x - 3
    ix = find(t==2);
    y = zeros(size(t));
    y(ix) = 1; 
    for j = ix-1:-1:1
        y(j) = y(j+1) - h*(5*y(j+1) - 3);
    end
    for j = ix+1:numel(t)
        y(j) = y(j-1) + h*(5*y(j-1) - 3);
    end
    y2 = 0.4*exp(-10)*exp(t) + 0.6;
    clf
    %plot(t,y,t,y2);
    %plot(t,y2);
    plot(t,y);
    sum(abs(y-y2))
%}
