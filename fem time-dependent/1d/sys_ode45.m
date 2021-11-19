function sys_ode45

tspan = [0 10];
initial = [-1 1];

initial_function = @(t, x) [-x(2); 2 * x(1)];

[t, x] = ode45(initial_function, tspan, initial);

plot(x(:, 1), x(:, 2))

end