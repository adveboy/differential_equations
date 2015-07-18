% analytical solution
a = 0; b = 2;
nn = 10000;
h = 2/nn;
t = 0:h:2;
rr = 0.4*exp(5*t) + 0.6;

% solution 1
y1 = eu(nn, a, b, 1);
sum(abs(y1(:,2) - rr'))

% solution 2
y2 = euler(@f, a, b, 1, nn);
sum(abs(y2(:,2) - rr'))

%solution 3
y3 = euler_spec(nn, a, b, 1);
sum(abs(y3(:,2) - rr'))

sum(abs(y3(:,2) - y2(:,2)));
plot(y1(:,1),y1(:,2), y1(:,1), rr)

y4 = euler_modified(@f, a, b, 1, nn,1);
sum(abs(y4(:,2) - rr'))

tic
y4 = euler_modified(@f, a, b, 1, nn, 100);
sum(abs(y4(:,2) - rr'))
toc

y5 = adams_bashfort(@f, a, b, 1, nn);
sum(abs(y5(:,2) - rr'))

y6 = runge(@f, a, b, 1, nn);
sum(abs(y6(:,2) - rr'))

y7 = runge(@g, a, b, 1, nn);
