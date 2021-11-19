function [f, df] = shapefunction(x)
f = [(1-x)/2 (1+x)/2];
df = [-1/2 1/2];
end