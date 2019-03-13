% part 2 - ex1
function [A] = matrix_func(A)
% Replace all above 255 with 255
A(A > 255) = 255;
% Replace all below 0 with 0
A(A < 0) = 0;
% Round all elements in matrix
A = round(A);
% Make hystogram of A.
histogram(A)
end

