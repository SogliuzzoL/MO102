function [chemin] = predBoucleToChemin(pred, start, stop)
    chemin = [];
    s = stop;
    chemin(end+1) = s;
    m = [];
    while(elementIn(s, m) == 0)
        m(end + 1) = s;
        s = pred(s, 1);
        chemin(end+1) = s;
    end
    chemin = flip(chemin);
end

function [sortie] = elementIn(s, m)
    n = size(m);
    sortie = 0;
    for i=1:n(2)
        if m(i) == s
            sortie = 1;
            return;
        end
    end
end