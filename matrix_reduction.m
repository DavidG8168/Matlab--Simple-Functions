% part 2 - ex3
function [newVec] = matrix_reduction(N,A)
% Get sizes of matrix.
[m,n] = size(A);
% Get minimum between A matrix sizes and N
m = min(N,m);
n = min(N,n);
% Create new matrix in size of N
B = zeros(N);
% Copy elements, this reduces or increases the amount of elements if
% needed.
B(1:m, 1:n) = A(1:m,1:n);
% Split to even and odd rows.
Even = B(2:2:N, :);
Odd = B(1:2:N, :);
% Transpose.
Even = Even.';
Odd = Odd.';
% Transform to new vector.
EvenVec = Even(:);
OddVec = Odd(:);
% Take odd and even indices from each new vector.
% Calculated a way for each index to be odd.
Black = sum(EvenVec(1:2:end));
Black = Black + ( sum(OddVec(2:2:end)));
White = sum(OddVec(1:2:end));
White = White + ( sum(EvenVec(2:2:end)));
newVec = [White,Black];
end

