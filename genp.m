function A = genp(A)
  
 % LU factorization of a square matrix using Gaussian elimination
 % Inputs:
 %   A: Square matrix of size n x n to be factorized
 % Outputs:
 %   A: The input matrix A is overwritten with its LU factorization
 %   For i=1:n-1, A(i,i:n) is overwritten by U(i,i:n) while A(i+1:n, i) is overwritten by L(i+1:n,i)
  
  
  
    [n, ~] = size(A);  % Get the size of the input matrix A
    for k = 1:n-1
        for i = k+1:n
            A(i,k) = A(i,k)/A(k,k); % Compute the multiplier for row i
            
            % Perform row operations to eliminate elements below the diagonal
            for j = k+1:n
                A(i,j) = A(i,j) - A(i,k)*A(k,j);
            end
        end
    end
end