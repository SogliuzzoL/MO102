function [v] = insere(a, X)
v = a * ones(2 * size(X, 2) - 1, 1);
v(1:2:end) = X;
end
