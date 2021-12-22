Fkine(0,0,0,0);
function f = Fkine(theta1, theta2, theta3, d4)
    s1 = sin(theta1);
    c1 = cos(theta1);
    s2 = sin(theta2);
    c2 = cos(theta2);
    s3 = sin(theta3);
    c3 = cos(theta3);

    Z1 = [c1 -s1 0 0; s1 c1 0 0; 0 0 1 0; 0 0 0 1];
    X1 = [1 0 0 0.2; 0 1 0 0; 0 0 1 0; 0 0 0 1];
    TOA = Z1*X1;

    Z2 = [c2 -s2 0 0; s2 c2 0 0; 0 0 1 0; 0 0 0 1];
    X2 = [1 0 0 0.15; 0 1 0 0; 0 0 1 0; 0 0 0 1];
    TAB = Z2*X2;

    Z3 = [c3 -s3 0 0; s3 c3 0 0; 0 0 1 0; 0 0 0 1];
    X3 = [1 0 0 0; 0 -1 0 0; 0 0 -1 0; 0 0 0 1];
    TBE1 = Z3*X3;

    Z4 = [1 0 0 0; 0 1 0 0; 0 0 1 d4; 0 0 0 1];
    X4 = [1 0 0 0; 0 1 0 0; 0 0 1 0; 0 0 0 1];
    TBE2 = Z4*X4;

    f = TOA*TAB*TBE1*TBE2;
end
