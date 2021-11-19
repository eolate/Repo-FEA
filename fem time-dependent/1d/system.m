function system
h = 0.001;
n = 5;
t = 0:h:n;
y = zeros(length(t), 1);
x = zeros(length(t), 1);
y(1) = 1;
x(1) = 0;

for i = 1:length(t)-1
    y(i+1) = y(i) + h * 2 * x(i);
    x(i+1) = x(i) - h * y(i);
end
plot(x, y)
end