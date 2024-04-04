function C = matmult(A,B) 

%Our function takes input of two matrices A and B of size mxp and pxn (resp),
% and will return a single mxn matrix C.
 
 [m,p]=size(A); %Setting the size of matrix A to mxp
 [p,n]=size(B); %Setting the size of matrix B to pxm
   
  
% Matrix multiplication requires that the size of columns to rows aligns.
% So will return error message if requirement is not met.
  if size(A,2)~=size(B,1)
    error('Column size does not agree with row size');
  end
  
 C=zeros(m,n); %Intializing our mxn matrix C with all zeros
 
for i = 1:m
  for j = 1:n
    for k = 1:p
        C(i,j)=C(i,j)+A(i,k)*B(k,j); %Using definition of matrix multiplication
      end
    end
  end
  endfunction
