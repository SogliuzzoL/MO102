function [] = graphBellmanFord(A, start, stop, centers, radii)
    [pred, boucle] = bellmanFord(A, start);
    chemin = [];
    if boucle % si présence de circuit absorbant
        chemin = predBoucleToChemin(pred(:, end), start, stop);
    else
        chemin = predToChemin(pred(:, end), start, stop);
    end
    affichage(A, chemin, centers, radii);
end