C = sparse(20,20);
C(1,2) = 60;
C(1,5) = 40;
C(1,6) = 40;
C(2,3) = 30;
C(2,6) = 15;
C(2,7) = 10;
C(3,4) = 20;
C(3,7) = 10;
C(4,7) = 20;
C(4,8) = 10;
C(5,6) = 10;
C(5,9) = 40;
C(5,10) = 20;
C(6,5) = 30;
C(6,7) = 15;
C(6,9) = 10;
C(6,11) = 20;
C(7,8) = 35;
C(7,11) = 15;
C(7,12) = 40;
C(8,12) = 30;
C(9,10) = 60;
C(10,11) = 30;
C(10,13) = 20;
C(10,14) = 30;
C(11,15) = 30;
C(11,16) = 40;
C(12,11) = 50;
C(13,14) = 15;
C(13,17) = 15;
C(13,18) = 10;
C(14,15) = 20;
C(14,18) = 15;
C(14,19) = 15;
C(15,14) = 15;
C(15,19) = 20;
C(15,20) = 30;
C(16,20) = 50;
C(17,18) = 5;
C(18,19) = 25;
C(19,20) = 40;

centers = [0 0;2 0;4 0;6 0;0 -1;2 -1;4 -1;6 -1;0 -2;2 -2;4 -2;6 -2;0 -3;
    2 -3;4 -3;6 -3;0 -4;2 -4;4 -4;6 -4];
radii = 0.2*ones(20, 1);