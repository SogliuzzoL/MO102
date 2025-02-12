function [chemin] = predToChemin(pred, start, stop)
    chemin = zeros(size(pred));
    s = stop;
    chemin(1) = s;
    i = 2;
    while(s ~= start)
        s = pred(s, 1);
        chemin(i) = s;
        i = i + 1;
    end
    chemin = flip(chemin);
end