function [coord, connect, num_nodes, num_elem] = mesh(min, max, n_div)

coord = linspace(min, max, n_div+1);
num_nodes = length(coord);
num_elem = n_div;

for i = 1:num_nodes-1
    connect(i, :) = [i i+1];
end
end