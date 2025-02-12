function [] = affichage(C, chemins, flows, centers, radii)
    % Création de l'affichage du graph
    G = digraph(C);
    p = plot(G);
    % Changement graphique
    p.XData = centers(:,1);
    p.YData = centers(:,2);
    p.NodeFontSize = 16;
    p.EdgeFontSize = 16;
    p.ArrowSize = 16;
    p.MarkerSize = 20 .* radii;
    % Calcul du flow sur chaque edge
    F = calculFlow(chemins, flows);
    dim = size(F);
    % Affichage du flow
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
    % Crée une matrice F représentant le flow passant sur chaque edge
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