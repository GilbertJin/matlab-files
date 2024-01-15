product = [1 0 0 0  0; 
           0 1 0 0  0; 
           0 0 1 0  0; 
           0 0 0 -1 0; 
           0 0 0 0 -1];


productNow = [1, 0, 0, 0;
              0, 1, 0, 0;
              0, 0,-1, 0;
              0, 0, 0,-1];

for i = 1:1000000
    A = randi([-1,1],4,4);
    A(1,1) = 1;
    A(1,4) = 1;
    A(4,1) = 1;
    A(4,4) = 1;
    %A(5,5) = 0;
    answer = A.' * productNow * A - productNow;
    exitFlag = isempty(answer);
    if exitFlag == 1
        fprintf('Target matrix found.')
        disp(A)
        break
    end
end
if exitFlag == 0
    fprintf('Target matrix not found.')
end