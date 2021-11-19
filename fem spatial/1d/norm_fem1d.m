function norm_fem1d(u, coord, connect)

fprintf('\n');
fprintf('Computing norms of the solution error...\n'); 
M = 5;
xgp = gausspoints1d(M);
wp = gaussweights1d(M);

l2_norm_top = 0; 
l2_norm_bottom = 0;
num_elem = length(connect);

for i = 1:num_elem
    nodes = connect(i, :);
    verts = coord(nodes);
    uh = u(nodes);
    
    for j=1:length(wp)

        [f, ~] = shapefunction(xgp(j));
        x = dot(f, verts);
        u_exact_xgp = exact_solution(x);
        u_h_xgp = dot(f, uh);
        u_error = u_exact_xgp - u_h_xgp;
        
        l2_norm_top = l2_norm_top + dot(u_error, u_error) * wp(j) * jacob(verts);
        l2_norm_bottom = l2_norm_bottom + dot(u_exact_xgp, u_exact_xgp) * wp(j) * jacob(verts);
        
    end
    
end

  l2rel = sqrt(l2_norm_top/l2_norm_bottom);
  
  % Print out norms
  fprintf('Relative L2-norm of the error = %.12f\n', l2rel);
  % fprintf('Mesh spacing (h) = %.12f\n',h_max);    

end