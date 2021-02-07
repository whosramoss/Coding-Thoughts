% --------------------------------------------------------------
% Least squares curve fitting
% --------------------------------------------------------------

% --------------------------------------------------------------
% 1. Adjust the data below by the least squares method using: 
% a) One repetition ax + b 
% b) A parable ax² + bx + c
%
%   X  |  1  |  2  |  3  |  4  |  5  |  6  |  7  |  8   
%  -----------------------------------------------------
%   Y  | 0.5 | 0.6 | 0.9 | 0.8 | 1.2 | 1.5 | 0.7 | 2.0   
%
% Plot the two curves on the graph along with the points and compare the fit of the two.

clear; clc;
% a)
x = [1 2 3 4 5 6 7 8];
y = [0.5 0.6 0.9 0.8 1.2 1.5 1.7 2.0];
plot (x,y, 'o')
hold on;
g1 = x;
g2 = [1 1 1 1 1 1 1 1];
a11 = dot(g1,g1);
a12 = dot(g1,g2);
a21 = dot(g2,g1);
a22 = dot(g2,g2);
b1 = dot(g1,y);
b2 = dot(g2,y);
a = [a11 a12;a21 a22];
b = [b1;b2];
alpha = a\b;
X = 1:0.01:8;
Y = alpha(1).*X + alpha(2);
plot (X,Y,'r')
hold off

% b)
x = [1 2 3 4 5 6 7 8];
y = [0.5 0.6 0.9 0.8 1.2 1.5 1.7 2.0];
plot (x,y, 'o')
hold on;
g1 = x.^2;
g2 = x;
g3 = [1 1 1 1 1 1 1 1];
a11 = dot(g1,g1);
a12 = dot(g1,g2);
a13 = dot(g1,g3);
a21 = dot(g2,g1);
a22 = dot(g2,g2);
a23 = dot(g2,g3);
a31 = dot(g3,g1);
a32 = dot(g3,g2);
a33 = dot(g3,g3);
b1 = dot(g1,y);
b2 = dot(g2,y);
b3 = dot(g3,y);
a = [a11 a12 a13;a21 a22 a23; a31 a32 a33];
b = [b1;b2;b3];
alpha = a\b;
X = 1:0.01:8;
Y = alpha(1).*X.^2 + alpha(2).*X + alpha(3);
plot(X,Y,'r')
hold off
% --------------------------------------------------------------

% --------------------------------------------------------------
% 2. The table below shows the heights and weights of a 
% sample of nine men between the ages of 25 and 29, randomly 
% drawn from employees of a large industry:

%
%   HEIGHT (cm)  | 183 | 173 | 168 | 188 | 158 | 163 | 193 | 163 | 178   
%  ---------------------------------------------------------------------
%   WEIGHT (kg)  |  79 |  69 |  70 |  81 |  61 |  63 |  79 |  71 |  73 
%

% a) Plot the tabulated points and note that there appears 
%    to be a linear relationship between height and weight.
% b) Fit a line that describes the behavior of weight in relation to height
% c) Estimate the weight of a 175 cm tall employee.
% d) Estimate the height of an employee weighing 80 kg.

clear; clc;
% a)
x = [183 173 168 188 158 163 193 163 178];
y = [79 69 70 81 61 63 79 71 73];
plot(x,y,'o')
hold on

% b)
g1 = x;
g2 = [1 1 1 1 1 1 1 1 1];
a11 = dot(g1,g1);
a12 = dot(g1,g2);
a21 = dot(g2,g1);
a22 = dot(g2,g2);
b1 = dot(g1,y);
b2 = dot(g2,y);
a = [a11 a12;a21 a22]
b = [b1;b2]
alpha = a\b
X = 150:0.01:200;
Y = alpha(1).*X + alpha(2)
plot(X,Y,'r')
hold on

% c)
z = 175;
y1 = alpha(1)*z + alpha(2);
plot(z,y1,'*g')
hold on

% d)
y2 = 80;
x2 = (y2 - alpha(2))/alpha(1)
plot(x2,y2,'*k')
hold off
% --------------------------------------------------------------

% --------------------------------------------------------------
% 3. The table below provides the number of inhabitants of Brazil (in millions) since 1872:.
%
%       year   | 1872 | 1890 | 1900 | 1920 | 1940 | 1950 | 1960 | 1970 | 1980 | 1991   
%  ------------------------------------------------------------------------------------
%   population |  9.9 | 14.3 | 17.4 | 30.6 | 41.2 | 51.9 | 70.2 | 93.1 | 119.0| 146.2
%
% a) Plot the data and see if it is best fit by a straight line or a parable.
% b) Adjust the curve chosen in the letter a.
% c) Obtain an estimate for the Brazilian population in the year 2020.
% d) In which year did the Brazilian population exceed 100 million?

clear; clc;
% a)
x = [1872 1890 1900 1920 1940 1950 1960 1970 1980 1991];
y = [ 9.9 14.3 17.4 30.6 41.2 51.9 70.2 93.1 119.0 146.2];
plot(x,y,'o')
hold on

% b)
g1 = x.^2;
g2 = x;
g3 = [1 1 1 1 1 1 1 1 1 1];
a11 = dot(g1,g1);
a12 = dot(g1,g2);
a13 = dot(g1,g3);
a21 = dot(g2,g1);
a22 = dot(g2,g2);
a23 = dot(g2,g3);
a31 = dot(g3,g1);
a32 = dot(g3,g2);
a33 = dot(g3,g3);
b1 = dot(g1,y);
b2 = dot(g2,y);
b3 = dot(g3,y);
a = [a11 a12 a13;a21 a22 a23; a31 a32 a33]
b = [b1;b2;b3]
alpha = a\b
X = 1860:0.01:2040;
Y = alpha(1).*X.^2 + alpha(2).*X + alpha(3);
plot(X,Y,'r')
hold on

% c)
z = 2020
y1 = alpha(1).*z.^2 + alpha(2).*z + alpha(3)
plot(z,y1,'*g')
hold on

% d)
y2 = 100.0;
a = alpha(1);
b = alpha(2);
c = alpha(3) - y2;
delta = b^2 - 4*a*c
x21 = (-b + sqrt(delta))/(2*a)
x22 = ((-b - sqrt(delta))/(2*a))
plot(x21,y2,'*k')

% --------------------------------------------------------------
