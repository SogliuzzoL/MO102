function [preds, flows] = fordFulkerson(C, s, t)
    % Calcul d'une solution de flux maximal
    nSommet = size(C, 1);
    residuel = C;
    flows = zeros(1, 0);
    preds = zeros(nSommet, 0);
    
    [sortie, parent] = cheminAugmentant(residuel, s, t);
    
    while sortie == 1
        % Recherche du flux minimum
        flowMin = inf;
        i = t;
        while i ~= s
            flowMin = min(flowMin, residuel(parent(i), i));
            i = parent(i);
        end
        
        % Mise à jour du graphe résiduel
        i = t;
        while i ~= s
            residuel(parent(i), i) = residuel(parent(i), i) - flowMin;
            residuel(i, parent(i)) = residuel(i, parent(i)) + flowMin; % Ajout du chemin inverse
            i = parent(i);
        end
        
        % Sauvegarde du flux et du prédécesseur
        flows(end + 1) = flowMin;
        preds(:, end + 1) = parent(:);
        
        % Recherche d'un nouveau chemin augmentant
        [sortie, parent] = cheminAugmentant(residuel, s, t);
    end
end
