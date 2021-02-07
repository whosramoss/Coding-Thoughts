# Eigenvalues and eigenvectors

## Eigen
### Given an array A of type n by n. An eigenvector is a nonzero vector such that for some scalar l (real or complex) we have A(x) = l(x). Scalar "l" is called eigenvalue det(A - l(I)) = 0 where "I" is the matrix identity n by n. (eye (n)). In general the eigenvalues of an (even real) matrix are complex, however, if the matrix is symmetrical it is not difficult to see that its eigenvalues are real.

### In matlab to calculate the eigenvalues and eigenvectors of a matrix A with the command eig()

- The vector "C" of length "n" contains the eigenvalues of matrix A and The vector "D" of length "n" contains the eigenvalues of matrix B
```matlab
A = [ 1 2 ; 2 1 ];
B = [ 1  1 ; -1  1];
C = eig(A);
D = eig(b);

% C = [1 1i; 1 -1i]
% D = [-1; 3]
```
- To calculate the eigenvalues and the corresponding eigenvectors [V, D] = eig(A). This command produces a diagonal matrix D containing the eigenvalues of A and an n by n matrix containing the corresponding eigenvectors such that the equation A * V = V * D is satisfied.
```matlab
B = [ 1  1 ; -1  1];
[W , D ] = eig(B)
g = B * W - W * D
% W = [0 0; 0+0i 0-0i]
% D = [1+1i 0; 0 1-1i]
% g = [0 0; 0 0]

```

## Decomposition in Singular Values

### The singular value decomposition and the associated concept of conditioning are very important tools in numerical methods and numerical analysis. A matrix of type m by n (real or complex) can always be written as A = U*S*V' where U and V are orthogonal (unitary) and S is diagonal. The columns of matrix m by m U are the matrix self-vectors A A 'while the columns of matrix n by n V are the matrix self-vectors A A'. Moreover the so-called singular values which are the diagonal elements of S are the square roots of the nonzero self-values of A A 'and A' A.

- Calculate the singular value decomposition (SVD) of an A matrix
```matlab
A = [ 2 0; 0 -3; 0 0];
[U, S, V] = svd(A);
% U = [0 1 0; 1 0 0; 0 0 1]
% S = [3 0; 0 2; 0 0]
% V = [0 1; 0 -1]
```

### The fundamental geometric idea that permeates the SVD is to obtain two orthonornal bases in which the linear transformation can be written as an application that sends elements from one base into multiples of elements from the other.

### The eigshow command allows to display in the case of 2 by 2 matrices the two bases mentioned above in several examples.

### Analysis of the solution of linear systems can be done based on single value decomposition. In fact, since we have the singular value decomposition of A = U*S*V'. Suppose that m = n is that all singular values of A are nonzero. To solve the system A*x = y just do x = V*(1/S)*U'*y where, as S is diagonal, S-1 is quite simple to calculate. inverting the elements of the diagonal of S. On the other hand, if some of the singular values are close to zero, this means that our system of equations is potentially unstable and that small changes on the right side y can lead to major changes in the solution s.

### This leads to the notion of conditioning which is the ratio between the largest and the smallest of the singular values.

## Conditioning

### To calculate the conditioning of a matlab matrix just cond()

- Creating the Hilbert matrix A = ((1/(i + j -1))), i,j = 1:5 
```matlab
A = hilb(5);
B = cond(A);
% B = 4.7661e+05
```