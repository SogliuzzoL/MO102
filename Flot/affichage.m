function [] = affichage(C, chemins, flows, centers, radii)
    G = digraph(C);
    p = plot(G);
    p.XData = centers(:,1);
    p.YData = centers(:,2);
    p.NodeFontSize = 16;
    p.EdgeFontSize = 16;
    p.ArrowSize = 16;
    p.MarkerSize = 20 .* radii;
    F = calculFlow(chemins, flows);
    dim = size(F);
    for i=1:dim(1)
        for j=1:dim(2)
            flow = F(i, j);
            if C(i, j)
                if flow
                    highlight(p, [i, j], 'NodeColor', 'r', 'EdgeColor', 'r');
                end
                labeledge(p, i, j, flow + " - [" + string(full(C(i, j))) + "]");             
            end
        end
    end
end

function [F] = calculFlow(chemins, flows)
    dim = size(chemins);
    F = zeros(dim(1), dim(1));
    for i=1:dim(2)
        chemin = chemins(:, i);
        for j=1:dim(1) - 1
            if chemin(j)
                F(chemin(j), chemin(j + 1)) = F(chemin(j), chemin(j + 1)) + flows(i);
            end
        end
    end
end