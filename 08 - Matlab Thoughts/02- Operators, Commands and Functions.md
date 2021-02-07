# Operators, Commands and Functions

## Arithmetic Operators
```matlab
num = 1;
mat = [1 2];
num+num;	        %Addition
num-num;	        %Subtraction
num.*num;	        %Element-wise multiplication
num*num;	        %Matrix multiplication
num./num	        %Element-wise right division
num/num	            %Matrix right division
num.\num	        %Element-wise left division
num\num	            %Matrix left division
num.^num	        %Element-wise power
num^num	            %Matrix power
mat.'	            %Transpose
mat'	            %Complex conjugate transpose
```
## Relational Operators
```matlab
==	%Equal to
~=	%Not equal to
>	%Greater than
>=	%Greater than or equal to
<	%Less than
<=	%Less than or equal to
```

## Logical  Operators
```matlab
&	%Logical AND
|	%Logical OR
&&	%Logical AND (with short-circuiting)
||	%Logical OR (with short-circuiting)
~	%Logical NOT

% Create a z1 variable that contains the x elements that are
% greater than 1 and less than 4.
x = [1 2 3 4 5]
z1 = x((x > 1) & (x < 4));

% Replace all x values that are less than 3 with zero.
x((x < 3)) = 0
```

## String and Character Formatting
```matlab
''	%Single quotation mark
%%	%Single percent sign
\\	%Single backslash
\a	%Alarm
\b	%Backspace
\f	%Form feed
\n	%New line
\r	%Carriage return
\t	%Horizontal tab
\v	%Vertical tab
\xN	%Hexadecimal number, N
\N	%Octal number, N
```

## Predefined Commands
```matlab
clc         % clear command screen 
clearvars   % clear workspace screen
quit        % leave MATLAB 
doc         % reference page in Help browser (doc sqrt)
edit        % edit or create file
```

## Predefined Functions
```matlab
rand()    % Uniformly distributed random numbers
plot()    % 2-D line plot
size()    % Array size
round()   % Round to nearest decimal or integer 
abs()     % Absolute value 
sqrt()    % Square root
eig()     % Eigenvalues
sin()     % Sine of the input
cos()     % Cosine  of the input  
tan()     % Tangent  of the input
asin()    % Inverse sine of the input
acos()    % Inverse cosine  of the input
atan()    % Inverse tangent of the input
atan2()   % Four-quadrant inverse tangent of the input
sinh()    % Hyperbolic sine  of the input
cosh()    % Hyperbolic cosine of the input
tanh()    % Hyperbolic tangent of the input
asinh()   % Inverse hyperbolic sine  of the input
acosh()   % Inverse hyperbolic cosine  of the input
atanh()    % Inverse hyperbolic tangent  of the input
```


