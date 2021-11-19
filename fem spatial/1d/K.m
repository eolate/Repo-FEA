function k = K(verts)

M = 20;
xgp = gausspoints1d(M);
wp = gaussweights1d(M);
k = 0;

for i = 1:M
    [~, df] = shapefunction(xgp(i));
    k = k + df' * df * wp(i)/jacob(verts);
end