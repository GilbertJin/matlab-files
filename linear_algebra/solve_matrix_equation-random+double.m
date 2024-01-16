product = [1 0 0 0  0; 
           0 1 0 0  0; 
           0 0 1 0  0; 
           0 0 0 -1 0; 
           0 0 0 0 -1];
for i = 1 : 100000
    targetEquation = @(A) A.' * product * A - product;
    randomMatrix = rand(5,5);
    [A, fval, exitFlag] = fsolve(targetEquation, randomMatrix);
    if (exitFlag == 1)
        break
    end
end