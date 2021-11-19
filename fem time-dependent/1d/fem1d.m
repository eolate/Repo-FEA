function fem1d

N = 50;
minimun = -1;
maximun = 1;
n_div = N;

[coord, connect, num_nodes, num_elem] = mesh(minimun, maximun, n_div);

k_g = zeros(num_nodes, num_nodes);
m_g = zeros(num_nodes, num_nodes);
f_g = zeros(num_nodes, 1);

for i = 1:num_elem
    
    nodes = connect(i, :);
    verts = coord(nodes);
    
    ind = zeros(length(nodes), 1);
    range = 1:length(nodes);
    ind(range) = nodes;
    
    k_g(ind, ind) = k_g(ind, ind) + K(verts);
    m_g(ind, ind) = m_g(ind, ind) + M(verts);
    f_g(ind) = f_g(ind) + b(verts);
    
end


border = zeros(num_nodes, 1);

for i = 1:num_nodes
    if (abs(coord(i) - minimun) == 0)
       border(i,:) = i;
    end
    if (abs(coord(i) - maximun) == 0)
       border(i,:) = i;
    end
end


border(border == 0) = [];
border = unique(border);

free_nodes = setdiff(1:length(coord), border);
u_initial = exact_solution(coord(free_nodes), 0);

dk = 0.000001;
U(free_nodes, 1) = u_initial;

n = 1;
t = 0:dk:n;

for i = 1:length(t) - 1
    U(free_nodes, i+1) = m_g(free_nodes, free_nodes) \ (m_g(free_nodes, free_nodes) * U(free_nodes, i) - ...
         dk * k_g(free_nodes, free_nodes) * U(free_nodes, i));
    U(border, i) = u_dirichlet(coord(border), i);
end

U = full(U);
x = linspace(minimun, maximun, n_div + 1);
%norm_fem1d(u, coord, connect)
for i = 1:length(t) - 1
    plot(x, exact_solution(x, t(i)), 'r', x, U(:, i), 'b')
    xlim([-1 1])
    ylim([-1 1])
    drawnow
end

end