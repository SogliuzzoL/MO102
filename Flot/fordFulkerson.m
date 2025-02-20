function [preds, flows] = fordFulkerson(C, s, t)
    % Calcul d'une solution de flow maximal
    dim = size(C);
    nSommet = dim(1);
    residuel = C;
    flows = [];
    preds = [];
    [sortie, parent] = cheminAugmentant(residuel, s, t);
    while sortie == 1
        % Recherche du flow minimun
        flowMin = inf;
        i = t;
        while i ~= s
            flowMin = min(flowMin, residuel(parent(i), i));
            i = parent(i);
        end
        % Calcul du nouveau graph résiduel
        i = t;
        while i~= s
            residuel(parent(i), i) = residuel(parent(i), i) - flowMin;
            residuel(i, parent(i)) = residuel(i, parent(i)) + flowMin;
            i = parent(i);
        end
        flows(end + 1) = flowMin;
        preds(:, end + 1) = parent;
        % Recherche d'un nouveau chemin augmentant
        [sortie, parent] = cheminAugmentant(residuel, s, t);
    end
end