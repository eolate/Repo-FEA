function fem1d

N = 10;
minimun = -1;
maximun = 1;
n_div = N;

[coord, connect, num_nodes, num_elem] = mesh(minimun, maximun, n_div);

k_g = zeros(num_nodes, num_nodes);
f_g = zeros(num_nodes, 1);

for i = 1:num_elem
    
    nodes = connect(i, :);
    verts = coord(nodes);
    
    ind = zeros(length(nodes),1);
    range = 1:length(nodes);
    ind(range) = nodes;
    
    k_g(ind,ind) = k_g(ind,ind) + K(verts);
    f_g(ind) = f_g(ind) + b(verts);
    
end


border = zeros(num_nodes, 1);

for i=1:num_nodes
    if (abs(coord(i)-minimun)==0)
       border(i,:)=i;
    end
    if(abs(coord(i)-maximun)==0)
       border(i,:)=i;
    end
end


border(border == 0) = [];
border = unique(border);
u = zeros(length(coord), 1);

u(border) = u_dirichlet(coord(border));

f_g = f_g - k_g * u;

free_nodes = setdiff(1:length(coord), border);
u(free_nodes) = k_g(free_nodes, free_nodes) \ f_g(free_nodes);

u = full(u);
x = linspace(minimun, maximun, n_div + 1);
plot(x, u, 'r'); hold on;
norm_fem1d(u, coord, connect)

end