% --------------------------------------------------------------
% Methods and Gaussian Problems 
% --------------------------------------------------------------

% --------------------------------------------------------------
% 1. Using the bisection method, find the value of a root of the
% function f(x) = −0.5x^2 + 2.5x + 4.5, starting from the interval [5, 10], 
% with errors e1 = e2 = 10 ^ (- 2).
clear; clc;
a = 5, b = 10, err = 0.01, k = 0;
while (b - a) > err
 x = (a+b)/2;
 c = (-0.5*((x).^2)+2.5*x+4.5);
 d = (-0.5*((a).^2)+2.5*a+4.5);
 if c*d > 0
    a = x;
 else
    b = x;
 end
 k = k+1;
end
disp(x);
disp(k);
% --------------------------------------------------------------

% --------------------------------------------------------------
% 2. Using the false position method, find the value of a root of the
% function f (x) = 5x ^ 3 - 5x ^ 2 + 6x −2, starting from the interval [0, 1], 
% with errors e1 = e2 = 10 ^ (- 3).
clear; clc;
a = 0, b = 1, err = 0.001, k = 0;
while (b - a) > err
 avgA = (5*a.^3 - 5*a.^2 + 6*a - 2);
 avgB = (5*b.^3 - 5*b.^2 + 6*b - 2);
 x = (a*abs(avgB) + b*abs(avgA))/(abs(avgB)+abs(avgA));
 calcAvg = (5*x.^3 - 5*x.^2 + 6*x - 2);
 if MediaA*calcAvg > 0 
    a = x;
 else
    b = x;
 ends
 k = k+1;
end
disp(x);
disp(k);
% --------------------------------------------------------------

% --------------------------------------------------------------
% 3. Using the Newton-Raphson method, find the value of a root of the
% function f(x) = e^(-x) -x, starting from the initial value x0 = 0, 
% with errors e1 = e2 = 10^(- 5).

clear; clc;
x0 = 0;     %inicial value
err = 1e-5; %error
k=0;
if abs(exp(-x0)-x0) < err
 x_root = x0;
end

x1=x0-(exp(-x0)-x0)/(-exp(-x0)-1); 
partialErr = (x1-x0);
y=(exp(-x1)-x1);

while abs(y) > err || abs(partialErr) > err
 if abs(y) < err || abs(x1-x0) < err
    x_root=x1;
 end
 x0 = x1; 
 x1=x0-(exp(-x0)-x0)/(-exp(-x0)-1);
 partialErr=(x1-x0);
 y=(exp(-x1)-x1);
 k=k+1;
end
disp(x_root);
disp(k);
disp(partialErr);

% --------------------------------------------------------------
% 4. Using the Newton-Raphson method, find the value of a root of the
% function f(x) = 2x^3 − 11.7x2 + 17.7x - 5, starting from the initial value x0 = 3, 
% with errors e1 = e2 = 10^(- 5).

clear; clc;
x0 = 3, x1 = 1, err = 1e-5, fx1 = 1;
format long;
while (abs(x1 - x0) > err) || abs(fx1) > err
 x0 = x1;
 x0f = (2*(x0^3) - 11.7*(x0^2) + 17.7*x0 - 5);
 dx0f = (6*(x0^2) - 23.4*x0 + 17.7);
 x1 = x0 - (x0f/dx0f);
 fx1 = 2*x0^3 - 11.7*x0^2 + 17.7*x0-5;
end
disp(x0);
% --------------------------------------------------------------

% --------------------------------------------------------------
% 5. Considering the function f(x) = 4sen(x) - e^x, find the approximate value of the root of f (x)
% for the following conditions:
%       a) Using the bisection method, with an initial interval between [0, 1] and errors e1 = e2 = 10^(- 4).
%       b) Using the false position method, with an initial interval between [0, 1] and errors e1 = e2 = 10^(- 4).
%       c) Using the Newton-Rhapson method, with initial value x0 = 0.5 and errors e1 = e2 = 10^(- 4).


% a)
clear; clc;
x0 = 0.5, x1 = 1, err1 = 1e^(-5), fx1 = 1;
a = 0, b =1, err2 = 1e^(-4), k = 0;
format long;
while (abs(x1 - x0) > err1) || abs(fx1) > err1
    x0 = x1;
    x1 = x0 - (4*sin(x0)-exp(x0))/(4*cos(x0)-(x0*exp(x0)));
    fx1 = 4*sin(x0)-exp(x0);
end
disp(x0);

while (b - a) > err2
    x = (a+b)/2;
    c = (4*sin(x)-exp(x));
    d = (4*sin(a)-exp(a));
    if c*d > 0
        a = x;
    else
        b = x;
    end
    k = k+1;
end
disp(x);
disp(k);

% b)
clear; clc;
a=0, b=1, err = 1e^(-4), k = 0;
while (b - a) > err
    x = (a+b)/2;
    c = (4*sin(-x)-exp(x));
    d = (4*sin(-a)-exp(a));
    if c*d > 0
        a = x;
    else
        b = x;
    end
    k = k+1;
end
disp(x);
disp(k);

% c) 
clear; clc;
x0 = 0, err = 1e^(-5), k = 0;
if abs(4*sin(-x0)-exp(x0)) < err
    x_root = x0;
end
x1 = x0 - (4*sin(-x0)-exp(x0))/(4*cos(-x0)-exp(x0));
partialErr = (x1-x0);
y = (4*sin(-x1) - exp(x1));
while abs(y) > err || abs(partialErr) >  err
    if abs(y) < err || abs(x1-x0) < err
        x_root = x1;
    end
    x0 = x1; 
    x1 = x0 - (4*sin(-x0)-exp(x0))/(4*cos(-x0)-exp(x0));
    partialErr = (x1-x0);
    y = (4*sin(-x1)-exp(x1));
    k = k + 1;
end
disp(x_root);
disp(k);



% --------------------------------------------------------------
% 6. Solve the linear systems below using Gaussian removal method
% a) 
%     + 3(x¹)       - 1(x²)     + 0.2(x³)   = 7.85
%     + 0.1(x¹)     + 7(x²)     - 0.3(x³)   = -19.3
%     + 0.3(x¹)     - 0.2(x²)   + 10(x³)    = 71.4

% b) 
%     +4(x¹)       - 1(x²)    - 1(x³)   = -1
%     - 1(x¹)     + 4(x²)     - 3(x³)   -1(x4)    = 2
%     + 1(x¹)     - 1(x²)     + 4(x³)   -1(x4)    -1(x5)  = 6
%     - 1(x²)     - 1(x³)     + 4(x4)   -1(x5)    = 2
%     - 1(x³)     - 1(x4)     + 4(x5)    = 2

% a)
    clear;clc;
    m = [ 3 -0.1 -0.2 7.85 ; 0.1 7 -0.3 -19.3 ; 0.3 -0.2 10 71.4];
    [l,c] = size(m);
    for i = 1:l
        for j = (i+1):l
            m(j,:) = m(j,:) - m(j,i)/m(i,i) * m(i,:);
        end
    end
    disp(m);
% b)
    clear;clc;
    m2 =  [ 4 -1 -1 0 0 -1 ; -1 4 -1 -1 0 2 ; -1 -1 4 -1 -1 6 ; 0 -1 -1 4 -1 2 ; 0 0 -1 -1 4 2;]
    [l,c] = size(m2);
    for i = 1:l
        for j = (i+1):l
            m2(j,:) = m2(j,:) - m2(j,i)/m2(i,i) * m2(i,:);
        end
    end
    disp(m2);