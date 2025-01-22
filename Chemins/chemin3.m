A = sparse(14,14);
A(1,2) = 3;
A(1,3) = 5;
A(1,4) = 8;
A(2,6) = 1;
A(2,7) = 8;
A(3,5) = 6;
A(3,6) = 2;
A(4,5) = 1;
A(4,8) = -4;
A(5,9) = 6;
A(5,11) = 7;
A(6,9) = 9;
A(6,11) = 7;
A(7,9) = -5;
A(7,10) = 4;
A(8,10) = 3;
A(9,12) = 2;
A(9,13) = -6;
A(10,12) = 4;
A(10,13) = -5;
A(11,13) = -3;
A(12,14) = 4;
A(13,14) = 9;

centers = [0 0;1.5 0;1.5 2;1.5 -2;3 3;3 1;3 -1;3 -3;4.5 0;4.5 -2;4.5 2;6 -1;6 1;7.5 0];
radii = 0.3*ones(14,1);

Q = sparse(14,14);
Q(1,2) = 10;
Q(1,3) = 5;
Q(1,4) = 3;
Q(2,6) = 4;
Q(2,7) = 5;
Q(3,5) = 3;
Q(3,6) = 7;
Q(4,5) = 11;
Q(4,8) = 6;
Q(5,9) = 3;
Q(5,11) = 9;
Q(6,9) = 5;
Q(6,11) = 15;
Q(7,9) = 12;
Q(7,10) = 5;
Q(8,10) = 7;
Q(9,12) = 4;
Q(9,13) = 9;
Q(10,12) = 5;
Q(10,13) = 3;
Q(11,13) = 7;
Q(12,14) = 6;
Q(13,14) = 2;

q = 30;