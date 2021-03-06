function M = M(verts)

m = 10;
M = 0;
g = gausspoints1d(m);
w = gaussweights1d(m);

for i = 1:m
    for j = 1:m
    [J, ~] = jacobian(g(i), g(j), verts);
    N = shapefunction(g(i), g(j));
    M = M + N' * N * J * w(i) * w(j);
    end
end

end