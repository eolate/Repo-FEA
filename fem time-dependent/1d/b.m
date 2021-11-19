function g = b(verts)

M = 20;
xgp = gausspoints1d(M);
wp = gaussweights1d(M);
g = 0;

for i = 1:M
    [s, ~] = shapefunction(xgp(i));
    g = g + s' * wp(i) * jacob(verts) * f(dot(verts,s));
end

end