function u_dirichlet = u_dirichlet(verts)
x = verts(:, 1);
y = verts(:, 2);
u_dirichlet =  exact_solution(x, y);
end