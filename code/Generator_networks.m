% number of vertices
n = 5;

% maximum number of edges
s = 2^(n * n - n);

% generating all possible digraphs
x = de2bi(0:2^20-1);

% generating all strongly connected graph
matrix_vec = [];

for i = 1 : s
    v = x(i,:);
    
    % check whether v is strongly connected 
    G = digraph(adjacent_matrix(v));
    bins = conncomp(G, 'Type', 'strong');
    if all(bins == 1)
        matrix_vec = [matrix_vec; v];
    end
    
end

% classify according the number of edges
for i = 5 : 20
    class = ['digraph_',mat2str(i)];
    eval([class, '= [];']);
end

for i = 1 : size(matrix_vec,1)
    v = matrix_vec(i,:);
    edge_num = sum(v);
    class = ['digraph_',mat2str(edge_num)];
    eval([class, '= [eval(class); v];']); 
end
