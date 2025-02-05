function [] = graphBellmanFord(A, start, stop, centers, radii)
    pred = bellmanFord(A, start);
    chemin = predToChemin(pred(:, end), start, stop);
    affichage(A, chemin, centers, radii);
end