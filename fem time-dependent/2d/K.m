function K = K(verts)

M = 3;
K = 0;
g = gausspoints1d(M);
w = gaussweights1d(M);

for i = 1:M
    for j = 1:M
    [J, A] = jacobian(g(i), g(j), verts);
    K = K + A * A' * (1/J) * (1/J) * J * w(i) * w(j);
    end
end
end