# Conditions 

### Like any programming language, MATLAB has specific commands for controlling the flow of the algorithm: IF,FOR, and WHILE. These commands are similar to those found in other languages like C or Pascal, and their syntax is quite simple.

- Write a script that generates a random number, and plot the sine function if this number is greater than 0.5, if the random number generated is not greater than 0.5, plot the cosine function (between -pi and pi)
```matlab
x = rand(1);
rad = −pi : pi/90 : pi;
if x > 0.5
    plot(rad, sin(rad));
else
    plot(rad, cos(rad));
end
```
- Write a script that creates the variable x = 1, multiply x by 2 and return the result to x within a for, repeated for 10 times and store the value of x in a vector of size 10, for each iteration of the for.
```matlab
x = 1;
for i = 1 : 10
    x = x ∗ 2;
    v(i) = x;
end
disp(v)
```

- Write a script that multiplies x = 1 by 3 in a loop and stop when this number reaches 1 million. Show value of this number every iteration with the disp function
```matlab
x = 1;
while x < 1000000
    x = x ∗ 3;
    disp(x);
end
```

- Write a script that calculates the factorial of 15. Show the final result with disp function.
```matlab
x = 15;
fact = x;
while x > 1
    x = x − 1;
    fact = fact ∗ x;
end
```

- Write a script that calculates the median of a vector through a function
```matlab
function median = MyMedian(v)
v_sort = sort(v);                       % sort v in ascending order
n = length(v);                          % vector length v
middle = n / 2; 
if  floor(middle) == middle;                % index is an integer - floor(x)  returns the largest integer contained in x
    median =  v_sort(middle + 1);           % v has even number of elements
else 
    median = v_sort(floor(middle) + 1 );  % v tem numero impar de elementos 
end; 
```
```matlab
v = [1 2 3 4 5]
med = MyMedian(v)
% med = 3
```

