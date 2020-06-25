s = 2^20;
% load('matrix_vec2.mat');

% for i = 5 : 20
%     class = ['digraph_',mat2str(i)];
%     eval([class, '= [];']);
% end

for i = 1 : size(matrix_vec2,1)
    v = matrix_vec2(i,:);
    edge_num = sum(v);
    class = ['digraph_',mat2str(edge_num)];
    eval([class, '= [eval(class); v];']); 
end