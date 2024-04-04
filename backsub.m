function [x] = backsub(U,y)
  
% backsub solves an upper triangular system Ux = y
% Inputs:
%   U: upper triangular matrix
%   y: column vector 
% Output:
%   x: solution vector

n = length(y);
x = zeros(n,1); 

x(n) = y(n) / U(n,n); % Solving for the last variable since U is upper triangular

for i = n-1:-1:1
    x(i) = (y(i) - U(i,i+1:n)*x(i+1:n)) / U(i,i); % Backward substitution
end
end