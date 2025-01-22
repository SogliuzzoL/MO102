function [A1] = matA1(N)
    h = 1 / (N + 1);
    h2 = h * h;
    e = ones(N,1) ./ h2;
    A1 = spdiags([-1*e 2*e -1*e],-1:1,N,N);
end