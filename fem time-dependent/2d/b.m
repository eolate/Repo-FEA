function b = b(verts)

M = 3;
b = 0;
gp = gausspoints1d(M);
wp = gaussweights1d(M);

for i = 1:M
    for j = 1:M
        [J, ~] = jacobian(gp(i), gp(j), verts);
        N = shapefunction(gp(i), gp(j));
        b = b + N' * J * g(dot(N, verts(:,1)), dot(N, verts(:,2))) * wp(i) * wp(j);
    end
end
end