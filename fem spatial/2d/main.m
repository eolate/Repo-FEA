function main

N = 10;
M = 10;

xminimun = -1;
xmaximun = 1;
yminimun = -1;
ymaximun = 1;

ndiv_x = N;
ndiv_y = M;

[coord, connect, num_nodes, num_elem] = meshQ4(xminimun, yminimun, xmaximun, ymaximun, ndiv_x, ndiv_y);

k_g = sparse(num_nodes, num_nodes);
f_g = sparse(num_nodes, 1);

for i = 1:num_elem
    
    nodes = connect(i, :);
    verts = coord(nodes, :);
    
    ind = zeros(length(nodes), 1);
    range = 1:length(nodes);
    ind(range) = nodes;
    
    k_g(ind, ind) = k_g(ind, ind) + K(verts);
    f_g(ind) = f_g(ind) + b(verts);
    
end

border = zeros(num_nodes, 1);

for i=1:num_nodes
    if (coord(i, 2) == yminimun)
        border(i,:) = i;
    end
    if (coord(i, 2) == ymaximun)
        border(i,:) = i;
    end
    if (coord(i, 1) == xminimun)
        border(i,:) = i;
    end
    if (coord(i, 1) == xmaximun)
        border(i,:) = i;
    end
end

border(border == 0) = [];
border = unique(border);
u = zeros(length(coord), 1);
u(border) = u_dirichlet(coord(border, :));
f_g = f_g - k_g * u;
free_nodes = setdiff(1:length(coord), border);
u(free_nodes) = k_g(free_nodes, free_nodes) \ f_g(free_nodes);

x = linspace(xminimun, xmaximun, ndiv_x+1);
y = linspace(yminimun, ymaximun, ndiv_y+1);
[X, Y] = meshgrid(x,y);

u_exact = exact_solution(X, Y);
u_h = reshape(u, N+1, M+1);

figure(1)
surf(X, Y , u_exact)
figure(2)
surf(X, Y , u_h)

l2 = fem_norm(u, coord, connect)




end