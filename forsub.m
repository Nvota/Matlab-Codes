function [y] = forsub(L, b)
  
% forsub solves a lower triangular system Ly = b
% Inputs:
%   L: lower triangular matrix
%   b: column vector
% Output:
%   y: solution vector

n = length(b);
y = zeros(n, 1);

y(1) = b(1) / L(1, 1); % Solving for the first variable since L is lower triangular

for i = 2:n
    y(i) = (b(i) - L(i, 1:i-1) * y(1:i-1)) / L(i, i); % Forward substitution
end

end