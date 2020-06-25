function adj_matr = adjacent_matrix(v)

adj_matr = zeros(5,5);
adj_matr(2:5,1) = v(1:4);
adj_matr(1,2) = v(5);
adj_matr(3:5,2) = v(6:8);
adj_matr(1:2,3) = v(9:10);
adj_matr(4:5,3) = v(11:12);
adj_matr(1:3,4) = v(13:15);
adj_matr(5,4) = v(16);
adj_matr(1:4,5) = v(17:20);
end