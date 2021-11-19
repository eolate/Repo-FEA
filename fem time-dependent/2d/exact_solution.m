function u = exact_solution(verts, t)
x = verts(:, 1);
y = verts(:, 2);
%u = -1/4 * (x.^2 + y.^2) + t;
%u = (-1 - x)*(-1 - y)*(1 - x)*(1 - y);
u = exp(-(2* pi)^t) * (sin(2 * pi * x) + sin(2 * pi * y));
end