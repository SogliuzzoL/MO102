function [sortie, parent] = cheminAugmentant(residuel, s, t)
    sortie = 0;
    dim = size(residuel);
    nSommet = dim(1);
    visite = zeros(nSommet, 1);
    parent = zeros(nSommet, 1);
    pile = [];
    visite(s) = 1;
    pile(end + 1) = s;
    pileSize = 1;
    while pileSize ~= 0
        i = pile(pileSize);
        pileSize = pileSize - 1;
        for j=1:nSommet
            if residuel(i, j) > 0 && visite(j) == 0
                pile(pileSize + 1) = j;
                pileSize = pileSize + 1;
                parent(j) = i;
                visite(j) = 1;
                if j == t
                    sortie = 1;
                    return;
                end
            end
        end
    end
end