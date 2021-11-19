function main

n = 10;
m = 10;

xminimun = -1;
xmaximun = 1;
yminimun = -1;
ymaximun = 1;

ndiv_x = n;
ndiv_y = m;

[coord, connect, num_nodes, num_elem] = meshQ4(xminimun, yminimun, xmaximun, ymaximun, ndiv_x, ndiv_y);

k_g = sparse(num_nodes, num_nodes);
m_g = sparse(num_nodes, num_nodes);
f_g = sparse(num_nodes, 1);

for i = 1:num_elem
    
    nodes = connect(i, :);
    verts = coord(nodes, :);
    
    ind = zeros(length(nodes), 1);
    range = 1:length(nodes);
    ind(range) = nodes;
    
    k_g(ind, ind) = k_g(ind, ind) + K(verts);
    m_g(ind, ind) = m_g(ind, ind) + M(verts);
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

free_nodes = setdiff(1:length(coord), border);
u_initial = exact_solution(coord(free_nodes, :), 0);

dk = 0.000001;
U(free_nodes, 1) = u_initial;

time = 1;
t = 0:dk:time;

for i = 1:length(t) - 1
    U(free_nodes, i+1) = m_g(free_nodes, free_nodes) \ (m_g(free_nodes, free_nodes) * U(free_nodes, i) - ...
         dk * k_g(free_nodes, free_nodes) * U(free_nodes, i));
    U(border, i) = u_dirichlet(coord(border, :), t(i));
end

U = full(U);

x = linspace(xminimun, xmaximun, ndiv_x+1);
y = linspace(yminimun, ymaximun, ndiv_y+1);
[X, Y] = meshgrid(x,y);



for i = 1:length(t) - 1
    u_h = reshape(U(:, i), n+1, m+1);
    surf(X, Y , u_h)
    drawnow
end



end