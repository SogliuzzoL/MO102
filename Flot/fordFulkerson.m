function [preds, flows] = fordFulkerson(C, s, t)
    dim = size(C);
    nSommet = dim(1);
    residuel = C;
    flows = [];
    preds = [];
    [sortie, parent] = cheminAugmentant(residuel, s, t);
    while sortie == 1
        display(residuel);
        pause(1);
        flowMin = inf;
        i = t;
        while i ~= s
            flowMin = min(flowMin, residuel(parent(i), i));
            i = parent(i);
        end
        display(flowMin);
        i = t;
        while i~= s
            residuel(i, parent(i)) = residuel(i, parent(i)) + flowMin;
            residuel(parent(i), i) = residuel(parent(i), i) - flowMin;
            i = parent(i);
        end
        flows(end + 1) = flowMin;
        preds(:, end + 1) = parent;
        [sortie, parent] = cheminAugmentant(residuel, s, t);
    end
end