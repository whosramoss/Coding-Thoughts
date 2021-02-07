# Functions

### An alternative to script files is function files, which accept input parameters, return values, and have local variables (do not affect the workspace). These features make programs written in this format act exactly like native MATLAB commands. They are therefore a way of extending the language, and it is one of the key points of MATLAB.

- Function calculating Euclidean distance between x and y points (Rn vectors)
```matlab
% Create a file with the function name, in this case 'calcDistance'
function distance = calcDistance(x,y)
difference = x - y;
distance = sqrt(difference*transpose(difference));
```

```matlab
% Call the file by the name of the function in the main file.
p = [1  0  0];
q = [0  1  0];
d  = calcDistance(p, q)
```