function plot_time

x = -1:0.01:1;
t = 1:10;



for t = 1:100
    f = x.^2 + t.^2 * rand(1);
    plot(x, f)
    drawnow
end

[X, T] = meshgrid(x, t);
F = X.^2 + T.^2
surf(X, T, F)
end