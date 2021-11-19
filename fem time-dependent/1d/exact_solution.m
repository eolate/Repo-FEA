function u = exact_solution(x, t)
% u = -x.^2/2 - x/2;
u = sin(2 * pi * x) * exp(-(2 * pi)^2 * t);
end