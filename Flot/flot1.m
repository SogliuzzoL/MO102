C = sparse(9,9);
C(1,2) = 6;
C(1,4) = 8;
C(2,3) = 1;
C(2,5) = 1;
C(3,6) = 1;
C(4,3) = 1;
C(4,5) = 1;
C(5,6) = 1;
C(6,7) = 1;
C(6,8) = 1;
C(7,8) = 1;
C(7,9) = 1;
C(8,9) = 1;

centers = [0 0;1.5 1;3 1;1.5 -1;3 -1;4.5 0;6 -1;6 1;7.5 0];
radii = 0.3*ones(9,1);