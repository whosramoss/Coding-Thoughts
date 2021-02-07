
% --------------------------------------------------------------
% Charts and Matrix
% --------------------------------------------------------------


% --------------------------------------------------------------
% 1)Plot the sine and cosine functions for values ranging from -2pi to 2pi, 
% with a range between pi / 90 values. Plot the sine red and the cosine blue. 
% Create a caption and a title for the chart.
clear; clc;
t = -2*pi : pi/90 : 2*pi;
A = sin(t), B = cos(t);
plot(t, A,'b', t, B, 'r');
title('Sine-Cosine Chart');
xlabel('Red: Cosine - Blue: Sine');
legend('A','B');
% --------------------------------------------------------------

% --------------------------------------------------------------
% 2) Creates a 10 × 10 size random matrix, substituting all values 
% less than 0.5 for zero and all values greater than 0.5 for 1.
clear; clc;
m = rand(10,10);
count1 = find(m < 0.5);
count2 = find(m > 0.5);
m(count1) = 0;
m(count2) = 1;
disp(m);
% --------------------------------------------------------------

% --------------------------------------------------------------
% 3) The expression that models the growth of the Brazilian population can be written 
% as P (t) = 157273000 / (1 + e ^ −0.0313 (t - 1913,25)) where it is given in years. 
% Plot a graph showing population growth from 1900 to 2100
clear; clc;
t = 1900:1:2100;
y = 157273000./(1+exp(-0.0313*(t-1913.25)));
plot(t,y)
title('Population Chart between 1900 and 2100');
ylabel('Population');
xlabel('Year');
% --------------------------------------------------------------

% --------------------------------------------------------------
% 4) Write a script that calculates 30 Fibonacci sequence numbers. 
% Each Fibonacci sequence number is equal to the sum of the last two sequence numbers. 
% The first and second sequence numbers are 0 and 1 (so the third is 0 + 1 = 1, the fourth is 1 + 1 = 2, and so on). 
% Store this sequence in a vector, where each vector position corresponds to a sequence number.
clear; clc;
f(1) = 0;
f(2) = 1;
for i = 3 : 30
    f(i) = f(i-1) + f(i-2);
    disp(f(i))
end
% --------------------------------------------------------------

% --------------------------------------------------------------
% 5. The cosine function can be represented by a series defined 
% as: cos (x) = ∞Σ (n = 0) ((−1) n / (2n)!)X^2n = 1− (x ^ 2/2! ) + (x ^ 4/4!) + (x ^ 6/6!)
% Calculate a cosine approximation of (π / 3) across  the series
% above using 3 terms (n from zero to 3) and 8 terms (n from zero to 8), 
% and compare both results with the predefined cosine function of Matlab.
clear; clc;
i=0, SerieTaylor1=0, SerieTaylor2=0;;
for n= 0:3
    i=(((-1)).^n)./(factorial(2*n))*(pi/3).^(2*n);
    SerieTaylor1 = SerieTaylor1 + i;
end
for n= 0:8
    i=(((-1)).^n)./(factorial(2*n))*(pi/3).^(2*n);
    SerieTaylor2 = SerieTaylor2 + i;
end
disp(SerieTaylor2);
disp(SerieTaylor1);
% --------------------------------------------------------------

% --------------------------------------------------------------
% 6. In mathematics, the harmonic series is the infinite series defined 
% as: ∞Σ (k = 1) (1 / k) = 1 + (1/2) + (1/3) + (1/4).
% This is a divergent series, since the value of the sum of its terms tends to infinity. 
% Make a matlab script that sum the value of the plots in this series for each interaction 
% (first iteration = 1, second iteration = 1 + (1/2), third iteration = 1 + (1/2) + (1/3) and and so on), 
% and stop the sum when the partial value of the series is greater than 10. Show on the screen 
% the number of iterations required to reach this value.
clear; clc;
summ = 0, count = 1;
while summ < 10
    summ = summ + 1./count;
    if summ < 10
        count=count+1;
    end
end
disp(summ);
disp(count);
% --------------------------------------------------------------
