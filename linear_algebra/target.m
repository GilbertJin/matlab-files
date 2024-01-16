format rat
syms a11 a12 a13 a14 a15 a21 a22 a23 a24 a25 a31 a32 a33 a34 a35 a41 a42 a43 a44 a45 a51 a52 a53 a54 a55

%A = [a11 a12 a13 a14 a15;
%     a21 a22 a23 a24 a25;
%     a31 a32 a33 a34 a35;
%     a41 a42 a43 a44 a45;
%     a51 a52 a53 a54 a55]
A = [a11 a12 a13 a14
     a21 a22 a23 a24
     a31 a32 a33 a34
     a41 a42 a43 a44];

%product = [1 0 0 0  0; 
%           0 1 0 0  0; 
%           0 0 1 0  0; 
%           0 0 0 -1 0; 
%           0 0 0 0 -1];

product = [1, 0, 0, 0;
           0, 1, 0, 0;
           0, 0,-1, 0;
           0, 0, 0,-1];

%A = subs(A, [a11,a22,a33,a44,a55,a15,a51,a12,a13,a14], [1,1,1,1,1,1,1,0,0,0])

A.' * product * A - product