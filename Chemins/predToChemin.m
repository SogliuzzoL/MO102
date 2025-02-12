function [chemin] = predToChemin(pred, start, stop)
    % convertit la colonne 'pred' en le chemin 'chemin' des sommets de start à stop
    chemin = [];
    s = stop;
    chemin(end+1) = s;
    while(s ~= start)
        s = pred(s, 1);
        chemin(end+1) = s; % ajoute le prédécesseur de 's' à chemin
    end
    chemin = flip(chemin); % inverse le sens de chemin (deb <-> fin)
end