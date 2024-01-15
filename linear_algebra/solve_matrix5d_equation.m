format rat
product = [1 0 0 0  0; 
           0 1 0 0  0; 
           0 0 1 0  0; 
           0 0 0 -1 0; 
           0 0 0 0 -1];

options=optimset;
options = optimset(options,'TolX',1e-12);
options = optimset(options,'TolFun',1e-12);
options = optimset(options,'MaxFunEvals',Inf);
options = optimset(options,'MaxIter',2000);
options = optimset(options,'Display','off');
options = optimset(options,'Algorithm','levenberg-marquardt');
for i = 1 : 100000
    targetEquation = @(A) A.' * product * A - product;
    randomMatrix = rand(5,5);
    [A, fval, exitFlag] = fsolve(targetEquation, randomMatrix, options);
    check = A.' * product * A;
    if (exitFlag == 1)
        break
    end
end

%disp(A);
%disp(check);