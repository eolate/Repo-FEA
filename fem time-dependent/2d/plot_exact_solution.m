function plot_exact_solution
n = 50;
m = 50;

ndiv_x = n;
ndiv_y = m;

xminimun = -1;
xmaximun = 1;
yminimun = -1;
ymaximun = 1;

x = linspace(xminimun, xmaximun, ndiv_x+1);
y = linspace(yminimun, ymaximun, ndiv_y+1);
[X, Y] = meshgrid(x,y);

dk = 0.0001;
time = 2;
t = 0:dk:time;

for i = 1:length(t) - 1
     u_exact = exp(-(2* pi)^t(i)) * (sin(2 * pi * X) + sin(2 * pi * Y));
     surf(X, Y , u_exact)
     xlim([-1 1])
     ylim([-1 1])
     zlim([-1 1])
     drawnow
end
end