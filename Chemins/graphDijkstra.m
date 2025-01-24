function [] = graphDijkstra(A, start, stop, centers, radii)
    chemin = dijkstra(A, start, stop);
    G = digraph(A);
    p = plot(G);
    p.XData = centers(:,1);
    p.YData = centers(:,2);
    p.NodeFontSize = 16;
    p.EdgeFontSize = 16;
    p.ArrowSize = 16;
    p.MarkerSize = 20 .* radii;
    highlight(p, chemin, 'NodeColor', 'r', 'EdgeColor', 'r');
    labeledge(p,1:numedges(G), G.Edges.Weight);
end