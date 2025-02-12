function [] = graphFordFulkerson(C, s, t, centers, radii)
    [preds, flows] = fordFulkerson(C, s, t);
    chemins = [];
    dim = size(preds);
    n = dim(2);
    for i=1:n
        chemins(:, end + 1) = predToChemin(preds(:, i), s, t);
    end
    affichage(C, chemins, flows, centers, radii);
end