function [s] = nouveauSommet(D, M)
    % renvoie le sommet le plus proche qui n'est pas encore marqué
    minValue = Inf;
    s = 0;
    d = size(D);
    n = d(2);
    for i=1:1:n
        if M(1, i) == 0 && D(1, i) < minValue
            minValue = D(1, i);
            s = i;
        end
    end
end