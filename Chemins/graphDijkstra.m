function [] = graphDijkstra(A, start, stop, centers, radii)
    pred = dijkstra(A, start, stop);
    chemin = predToChemin(pred', start, stop) ;
    affichage(A, chemin, centers, radii);
end