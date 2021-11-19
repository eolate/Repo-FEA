function l2 = fem_norm(u, coord, connect)

num_elem = length(connect(:,1));
M = 3;
g = gausspoints1d(M);
w = gaussweights1d(M);

l2_num = 0;
l2_den = 0;


for i=1:num_elem
    
    nodes = connect(i, :);
    verts = coord(nodes, :);
    
    ind = zeros(length(nodes), 1);
    range = 1:length(nodes);
    ind(range) = nodes;
    
%     x = verts(:, 1);
%     y = verts(:, 2);
%     u_exact = exact_solution(x, y);
     u_h = u(ind);
    
    for j = 1:M
        for k = 1:M
        N = shapefunction(g(j), g(k));
        x = dot(N, verts(:, 1));
        y = dot(N, verts(:, 2));
        u_teoric = exact_solution(x, y);
        %u_teoric = dot(N, u_exact);
        u_fem = dot(N, u_h);
        [J, ~] = jacobian(g(j), g(k), verts);
        l2_num = l2_num + dot(u_teoric - u_fem, u_teoric - u_fem) * w(j) * w(k) * J;
        l2_den = l2_den + dot(u_teoric, u_teoric) * w(j) * w(k) * J;
        end
    end

end
l2 = sqrt(l2_num/l2_den);
end