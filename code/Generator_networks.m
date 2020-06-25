s = 2^20;
x = de2bi(0:2^20-1);

matrix_vec = [];

for i = 1000001 : s
    v = x(i,:);
    
    % check whether v is strongly connected 
    G = digraph(adjacent_matrix(v));
    bins = conncomp(G, 'Type', 'strong');
    if all(bins == 1)
        matrix_vec = [matrix_vec; v];
    end
    
end
