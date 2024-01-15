format rat
syms a b c d e f g h k l
A = [1 a b 1;
     c 1 d e;
     f g 1 h;
     1 k l 1]
product = [1, 0, 0, 0;
           0, 1, 0, 0;
           0, 0,-1, 0;
           0, 0, 0,-1];

A.' * product * A - product