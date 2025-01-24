function [] = graphDijkstra2(A, start, stop, centers, radii)
    % chemin = dijkstra(A, start, stop);
    d = size(A);
    n = d(1);
    hold on;
    for i=1:n
        X = radii(i,1) * cos(0:2*pi/100:2*pi) + centers(i,1);
        Y = radii(i,1) * sin(0:2*pi/100:2*pi) + centers(i,2);
        plot(X, Y, "Color", "black");
        text(centers(i,1), centers(i,2), int2str(i), "HorizontalAlignment", "center");
    end
    x1 = min(centers(:,1));
    x2 = max(centers(:,1));
    y1 = min(centers(:,2));
    y2 = max(centers(:,2));
    xlim([x1 - 1, x2 + 1]);
    ylim([y1 - 1, y2 + 1]);
    for i=1:n
        for j=1:n
            if A(i,j) ~= 0
                ax = centers(i, 1);
                bx = centers(j, 1);
                ay = centers(i, 2);
                by = centers(j, 2);
                cosTheta = (bx - ax) / sqrt((bx - ax)^2 + (by - ay)^2);
                sinTheta = (by - ay) / sqrt((bx - ax)^2 + (by - ay)^2);
                Ax = ax+radii(i,1)*cosTheta;
                Bx = bx-radii(j,1)*cosTheta;
                Ay = ay+radii(i,1)*sinTheta;
                By = by-radii(i,1)*sinTheta;
                text((ax + bx)/2, (ay + by)/2, int2str(A(i,j)));
                k = 7;
                display([acos(cosTheta)/pi*180, asin(sinTheta)/pi*180, i, j]);
                color = "black";
                %taille = size(chemin);
                %for l=1:taille(2) - 1
                %    if chemin(l) == i && chemin(l+1) == j
                %        color = "red";
                %    end
                %end
                plot([Bx + 0.2*cos(k * pi/6 - acos(cosTheta)) Bx], [By + 0.2*sin(k * pi/6 - acos(cosTheta)) By], "Color", color);
                plot([Bx + 0.2*cos((k - 2) * pi/6 - acos(cosTheta)) Bx], [By + 0.2*sin((k - 2) * pi/6 - acos(cosTheta)) By], "Color", color);
                plot([Ax Bx], [Ay By], "Color", color);
            end
        end
    end
end