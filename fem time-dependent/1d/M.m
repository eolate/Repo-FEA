function m = M(verts)

M = 20;
xgp = gausspoints1d(M);
wp = gaussweights1d(M);
m = 0;

for i = 1:M
    [f, ~] = shapefunction(xgp(i));
    m = m + f' * f * wp(i) * jacob(verts);
end
end
