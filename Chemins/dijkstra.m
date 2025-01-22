function [chemin] = dijkstra(A, start, stop)
    d = size(A);
    n = d(1);
    D = Inf(1, n);
    D(start) = 0;
    M = zeros(1, n);
    P = zeros(1, n);
    while (M(stop) == 0)
        s = nouveauSommet(D, M);
        M(1, s) = 1;
        for i=1:n
            if (A(s,i) ~= 0 && D(1, i) > D(1, s) + A(s,i))
                D(1, i) = D(1, s) + A(s,i);
                P(1, i) = s;
            end
        end
    end
    s = stop;
    chemin = [];
    chemin(end+1) = s;
    while(s ~= start)
        s = P(1, s);
        chemin(end+1) = s;
    end
    chemin = flip(chemin);
end
    