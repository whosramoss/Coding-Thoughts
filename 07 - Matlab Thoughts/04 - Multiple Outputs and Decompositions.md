# Multiple Outputs and Decompositions

## Multiple Output Functions
```matlab
% Random array with number of rows and columns
% equal to birthday and store in the variable birthday
day = 8, month = 10
birthD = rand(day, month);

% Use the `size()` function to return the number of rows and columns.
% in the variables lin and col.
[lin, col] = size(birthD);

% Use the max () function to return the maximum value of the first
% line of life, along with your position. save the values in vmax and idx
[vmax, idx] = max(birthD(1, :))

```

## LU decomposition
- One of the main methods of solving linear systems involves the so-called `LU decomposition`. The overall result is that an invertible matrix A can be written as (A = (1/P)*L*U) where P is a matrix of permutations, L is a lower triangular matrix, and U is an upper triangular matrix.

- In matlab we can get the LU decomposition of an array with the command `[ L, U, P ] = lu(A)`
```matlab
A = [1 2 3 ; 4 5 6 ; 7 8 9];
[L, U, P] = lu(A)
% L = [1 0 0; 0 1 0; 0 0 1]
% U = [7 8 9; 0 0 1; 0 0 -0]
% P = [0 0 1; 1 0 0; 0 1 0]

B = P*A - L* U;
% B = [0 0 0; 0 0 0; 0 0 0]
```
- O comando `lu` usado com somente dois argumentos de saida `[ L , U ] = lu( A )` nos dá a matriz L já multiplicada pela matriz de permutacoes, ou seja (1/P)*L.

```matlab
[L1, U1] = lu(A);
% L1 = [0 0 0; 0 1 0; 1 0 0]
% U1 = [7 8 9; 0 0 1; 0 0 -0]
C = L - P*L1;
% C = [0 0 0; 0 0 0; 0 0 0]
```