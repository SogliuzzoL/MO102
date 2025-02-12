function [chemin] = predToChemin(pred, start, stop)
    % Conversion de la predication (chemin par recurrence) à un chemin explicite.
    chemin = zeros(size(pred));
    s = stop;
    chemin(1) = s;
    i = 2;
    % Parcours du vecteur de prediction par recurrence
    while(s ~= start)
        s = pred(s, 1);
        chemin(i) = s;
        i = i + 1;
    end
    chemin = flip(chemin);
end