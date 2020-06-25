function check_isomorphism(edge_num)

load('matrix_vec.mat');


x = ['digraph_',mat2str(edge_num)];
eval(['digraph_class =', x,';']);

digraph_iso = digraph_class(1,:);
K = size(digraph_class,1);
for k = 2 : K
    G_new = digraph(adjacent_matrix(digraph_class(k,:)));
    
    t = 1;
    for i = 1 : size(digraph_iso,1)
        G_old = digraph(adjacent_matrix(digraph_iso(i,:)));
        if ~isempty(isomorphism(G_new,G_old))
            t = 0;
            break
        end
    end
    if t
        digraph_iso = [digraph_iso; digraph_class(k,:)];
    end
end
save_name = ['digraph_iso_',mat2str(edge_num)];
eval([save_name,'= digraph_iso;']);

save(save_name,save_name)

