A = sparse(10,10);
A(1,5) = 8;
A(2,1) = 6;
A(2,3) = 1;
A(3,10) = 4;
A(4,2) = 1;
A(4,3) = 3;
A(5,6) = 3;
A(6,7) = 10;
A(6,8) = 3;
A(7,4) = 1;
A(7,8) = 2;
A(8,9) = 1;
A(9,3) = 15;
A(9,7) = 1;

centers = [0 0;2 2;4 4;4 2;2 -2;4 -2;6 0;8 -2;8 2;6 4];
radii = 0.5*ones(10,1);


Q = sparse(10,10);
Q(1,5) = 2;
Q(2,1) = 5;
Q(2,3) = 4;
Q(3,10) = 1;
Q(4,2) = 4;
Q(4,3) = 1;
Q(5,6) = 1;
Q(6,7) = 3;
Q(6,8) = 5;
Q(7,4) = 2;
Q(7,8) = 1;
Q(8,9) = 2;
Q(9,3) = 4;
Q(9,7) = 1;

q = 12;