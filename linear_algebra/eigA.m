clear;
A = sym([1   0 -1i 1;
         0   1 -1 -1i;
        -1i -1  1  0;
         1  -1i 0  1]);

[V,D] = eig(A)