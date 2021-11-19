function N = gradient_shapefunction(x, y)

N = [-(1-y)/4 (1-y)/4 (1+y)/4 -(1+y)/4;
    -(1-x)/4 -(1+x)/4 (1+x)/4 (1-x)/4];

end