function [] = affichage(C, chemins, flows, centers, radii)
    G = digraph(C);
    p = plot(G);
    p.XData = centers(:,1);
    p.YData = centers(:,2);
    p.NodeFontSize = 16;
    p.EdgeFontSize = 16;
    p.ArrowSize = 16;
    p.MarkerSize = 20 .* radii;
    labeledge(p,1:numedges(G), G.Edges.Weight);
    dim = size(chemins);
    n = dim(2);
    for i=1:n
        highlight(p, chemins(:, i), 'NodeColor', 'r', 'EdgeColor', 'r');
        for j=1:dim(1) - 1
            labeledge(p, chemins(j, i), chemins(j + 1, i), string(full(C(chemins(j, i), chemins(j + 1, i)))) + " - [" + flows(i) + "]");
        end
    end
end