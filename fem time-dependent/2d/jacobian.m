function [J, A] = jacobian(x, y, verts)

N = gradient_shapefunction(x, y);

x_xi = dot(N(1,:), verts(:,1));
x_eta = dot(N(2,:), verts(:,1));
y_xi = dot(N(1,:), verts(:,2));
y_eta = dot(N(2,:), verts(:,2));

A = [x_xi y_xi;
    x_eta y_eta];

J = det(A);

for i = 1:4
    a(i,:) = dot(N(:,i), [y_eta -y_xi]');
    b(i,:) = dot(N(:,i), [-x_eta x_xi]');
end

A = [a b];

end