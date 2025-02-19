function [P] = dijkstra(A, start, stop)
    d = size(A);
    n = d(1);
    D = Inf(1, n); % distance entre un sommet (repéré par son indice) et 'start'
    D(start) = 0; % la distance de 'start' à 'start' est 0
    M = zeros(1, n); % 1 si le sommet est marqué, 0 sinon
    P = zeros(1, n); % prédécesseurs d'un sommet pour aller à 'start'
    while (M(stop) == 0) % tant que l'arrivée n'est pas marqué
        s = nouveauSommet(D, M); % on étudie le sommet le plus proche
        M(1, s) = 1; % on marque quand on a trouvé le plus court chemin de 's' à start
        for i=1:n
            if (A(s,i) ~= 0 && D(1, i) > D(1, s) + A(s,i))
                % on actualise la distance si il y a un chemin plus court
                D(1, i) = D(1, s) + A(s,i);
                P(1, i) = s;
            end
        end
    end
end
    