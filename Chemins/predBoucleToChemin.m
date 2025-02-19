function [chemin] = predBoucleToChemin(pred, start, stop)
    % renvoie les sommets qui compose le circuit absorbant
    % même structure que 'predToChemin', mais on garde en mémoire les
    % sommets par lesquels on est passé
    chemin = [];
    s = stop;
    chemin(end+1) = s;
    m = []; % mémoire
    
    while(elementIn(s, m) == 0) % si le sommet actuelle est dans la mémoire => boucle, on sort de la boucle
        m(end + 1) = s;
        s = pred(s, 1);
        chemin(end+1) = s;
    end
    
    % on ne conserve que le circuit absorbant
    while(chemin(1) ~= chemin(end)) % le dernier sommet de chemin est celui qui permet de fermer la boucle (chemin = [ 10     8     7     6     5     4     2     7] par exemple)
        chemin = chemin(2:end);
    end

    chemin = flip(chemin);
    
end

function [sortie] = elementIn(s, m)
    % vérifie si 's' est dans 'm'
    n = size(m);
    sortie = 0;
    for i=1:n(2)
        if m(i) == s
            sortie = 1;
            return;
        end
    end
end