# Digraph_enumeration
enumerating all the strongly connected (unlabled) digraphs for given number of vertices n.

the total number |S| is:

n  |S|

0   1

1   1

2   1

3   5

4   83

5   5048

6   1047008

sc_digraph_v5.mat contains all the 5048 digraphs with 5 vertices which are strongly connected. In sc_digraph_v5.mat, the variable sc_digraph_v5_eX contains the digraphs with total edge number X, (X = 5 ~ 20), each row sc_digraph_v5_eX(i,:) represents one digraph, which adjacent matrix A can be obtained by running adjacent_matrix(sc_digraph_v5_eX(i,:)).

