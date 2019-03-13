% part 2 - ex2
function [B] = matrix_transpose(A)
% Pre allocate B
[r,c] = size(A);
B = zeros(c,r);
% Swap the the values in (i,j)indexes.
for i = 1:r
    for j = 1:c
        B(j,i) = A(i,j);
    end
end
end
% Built-in matlab transpose runs much faster
%matrix_tranpose -> 0.001040 secs
%matlab .' -> 0.000142 secs

