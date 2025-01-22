function [s] = suite(N)
if N > 0
    s = 1:N;
else
    s = N:0;
end