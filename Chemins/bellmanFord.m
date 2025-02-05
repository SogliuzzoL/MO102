function [pred] = bellmanFord(A, start)
    dim = size(A);
    nSommet = dim(1);
    c = Inf(dim);
    pred = zeros(dim);
    c(start, 1) = 0;
    for k=2:nSommet
        for j=1:nSommet
            c(j, k) = c(j, k - 1);
            pred(j, k) = pred(j, k - 1);
            for i=1:nSommet
                if A(i, j) ~= 0 && c(i, k - 1) ~= inf
                    if c(i, k - 1) + A(i, j) < c(j, k)
                        c(j, k) = c(i, k - 1) + A(i, j);
                        pred(j, k) = i;
                    end
                end
            end
        end
    end

    for j=1:nSommet
        for i=1:nSommet
            if A(i, j) ~= 0 && c(i, nSommet) ~= inf && c(i, nSommet) + A(i, j) < c(j, nSommet)
                pred = start * ones(dim);
                disp("Circuit absorbant");
                return;
            end
        end
    end
end