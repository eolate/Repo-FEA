function euler_method
h = 0.001;
n = 5;
t = 0:h:n;
y = zeros(length(t), 1);
y(1) = 1;

for i = 1:length(t)-1
    y(i+1) = y(i) + h * f_euler(t(i), y(i));
end

y_exact = exp(t);

plot(t, y, 'r', t, y_exact, 'b')
end