function [chemin] = predToChemin(pred, start, stop)
    chemin = [];
    s = stop;
    chemin(end+1) = s;
    while(s ~= start)
        s = pred(s, 1);
        chemin(end+1) = s;
    end
    chemin = flip(chemin);
end