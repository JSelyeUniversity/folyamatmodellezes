s = { 'a' 'a' 'a' 'a' 'b' 'b' 'c' 'd' 'd' 'd'};
t = { 'a' 'b' 'c' 'd' 'd' 'a' 'b' 'c' 'a' 'b'};
 
G = digraph(s,t);
 
labels = {'a/4' 'a/4' 'a/4' 'a/4' 'b/2' 'b/2' 'c' 'd/3' 'd/3' 'd/3'};
p = plot(G,'Layout','layered','EdgeLabel',labels);
highlight(p,[1 1 1 1],[1 2 3 4],'EdgeColor','g')
highlight(p,[2 2],[1 4],'EdgeColor','r')
highlight(p,[3],[2],'EdgeColor','m')
 
pr = centrality(G,'pagerank','FollowProbability',0.85)
