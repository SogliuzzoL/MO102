function [u] = resolv2(A1, f)
    L = chol(A1);
    y = L'\f;
    u = L\y;
end