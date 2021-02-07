# Vectors and Matrix

- ➡️ Vectors and matrix (arrays) are the basic types of the MATLAB language. You need to know well how MATLAB handles arrays to make full use of language.

## Vectors
```m
vl  = [1 2 3 4 5];       % line vector
vc  = [1; 2; 3; 4; 5];   % column vector
vn  = 1 : 100            % line vector from 1 to 100 
vnb = 1 : 0.5 : 100      % line vector from 1 to 100 with a space between 0.5 elements
vt  = vn'                % transposed vector
```
## Vector Functions
```m
dot()   % Dot product 
cross() % cross product 

A = [4 -1 2];
B = [2 -2 -1];
C = [4 -2 1];
D = [1 -1 3];
fdot = dot(A, B)    % fdot = (A(1)*B(1) + A(2)*B(2) + A(3)*B(3)) = 8
fcros = cross(C, D) % fcros = -5   -11    -2
```

## Matrixs
```m
A = [1  2;  0  1];  % matrix 2x2
b = [ 2  3];        % matrix 1x1
m = [1 2 3 4 5; 1 2 3 4 5; 1 2 3 4 5; 1 2 3 4 5; 1 2 3 4 5];   % matrix 5x5

mt = b'             % transposed matrix
mI = inv(A)*b'      % matrix inversion
mr = rand(10,10)    % matrix with random numbers
```
## Matrix Functions
```m
eye()   % Create Identity matrix 
zeros() % Create array of all zeros
det()   % Matrix determinan
trace() % Sum of diagonal elements
rand()  % Uniformly distributed random numbers

A = [1 -2 4; -5 2 0; 1 0 3];
B = [1 -5 2; -3 7 9; 4 -1 6];
mI3 = eye(3)     % mI3 = [1 0 0; 0 1 0 ; 0 0 1]
mZ2 = zeros(2)   % mI2 = [0 0; 0 0]
mD  = det(A)     % mD = -32
mT  = trace(B)   % mT =  14 
mr = rand(2)     % mr =  [2 12; 29 -70]
```

## Accessing Matrix Elements
```m
C = [1 2 3; 4 5 6; 7 8 9];  % example matrix 3x3
mrand = rand(10, 10)        % example random matrix

% 1) Changing the element positioned in 2a. line 2a. column by adding 1 to it
C(2,2) = C(2,2) + 1;  
% C = [1 2 3; 4 6 6; 7 8 9];

% 2) Changing the entire 1st line of matrix C to [3 2 1]
C(1,  : ) =  [3  2  1];
% C = [3 2 1; 4 6 6; 7 8 9];

% 3) Creating a submatrix D, consisting of the elements belonging to the first two rows and the % last two columns
D = C(1:2,  2:3);
% D = [2 1; 6 6];

% 4) Creating a variable X equal to the third  column of matrix C
X = C(:, 3)
% X = [3; 6; 9];

% 5 ) Access the value of the last row and the penultimate column of the matrix
random with the word 'end'
mrand(end, end − 1)

% 6 ) Access the last three lines of the random matrix 
mrand(8 : 10, :)

% 7 ) Replace the fourth line with a vector from 1 to 10
mrand(4, :) = 1 : 10
```

## Saving and loading matrix 
```m
mat = [1 1 1; 2 2 2; 3 3 3];
save matfile mat;       % matfile = file name containing variable "mat"
clearvars;              % clean up the workspace
load matfile;           % load and view variable
```

## Matrix Operations
```m
% Create two vectors v1 and v2, with elements from 1 to 20 in the order
% ascending and descending
v1 = 1 : 1 : 20;
v2 = 20 : −1 : 1;

% Add 5 to all v1 elements and store the result in v3.
v3 = v1 + 5

% Add v1 and v2, and store the result in v4
v4 = v1 + v2

% Calculate the square root of each element in v1, and store in v5.
v5 = sqrt(v1)

% Round the values of v5, and save the result in v6.
v6 = round(v5)

% Multiply the values of v1 with v2
v7 = v1.∗v2     % '*' for transposed matrix only

% Multiply the values of v1 with transposed v2
v8 = v1∗v2' 
```