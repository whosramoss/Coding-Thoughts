% --------------------------------------------------------------
% Laplace 
% --------------------------------------------------------------

% --------------------------------------------------------------
% 1. Define a first order transfer function with gain 1, time constant 1s, 
% and dead time 0.2s. Simulate for single step input and show in the same graph 
% (use hold on command) the answer for gains {1, 1.5, 2, 2.5}, 
% identifying the curves and placing subtitles.
clear; clc;
step(tf(1.0, [1 1], 'InputDelay', 0.2));
hold on
step(tf(1.5, [1 1], 'InputDelay', 0.2));
step(tf(2.0, [1 1], 'InputDelay', 0.2));
step(tf(2.5, [1 1], 'InputDelay', 0.2));
legend('K = 1','K = 1.5','K = 2','K = 2.5');
hold off
% --------------------------------------------------------------



% --------------------------------------------------------------
% 2. Generate a random signal with 100 elements using the randn command. 
% Determine the minimum and maximum using the min and max commands. 
% Plot the signal and mark the moments at which they occur using Datatips.
clear; clc;
t = 0:0.01:10;
u = 2*sin(3*t);
s1 = tf(1, [0.5 1], 'InputDelay', 0.2);
s2 = tf(1, [1.0 1], 'InputDelay', 0.2);
s3 = tf(1, [1.5 1], 'InputDelay', 0.2);
s4 = tf(1, [2.0 1], 'InputDelay', 0.2);
lsim(s1, s2, s3, s4,u,t);
hold on;
legend('S1','S2','S3','S4');
hold off;


% --------------------------------------------------------------


% --------------------------------------------------------------
% 3. Generate a random signal with 100 elements using the randn command. 
% Determine the minimum and maximum using the min and max commands. 
% Plot the signal and mark the moments at which they occur using Datatips.
clear; clc;
u = randn(100,1);
min(u); 
max(u);
plot(u);
% --------------------------------------------------------------


% --------------------------------------------------------------
% 4. Plot the step response of 𝐺 (𝑠) = 1 / (𝑠² + 2𝜁𝑠 + 1) on the same chart.
% for 𝜁 = {0.1, 0.5, 0.7, 0.9}, using captions to identify curves.
clear; clc;
step( tf(1, [1 2*0.1 1]));
hold on
step( tf(1, [1 2*0.5 1]));
step( tf(1, [1 2*0.7 1]));
step( tf(1, [1 2*0.9 1]));
legend('1','2','3','4');
hold off;
% --------------------------------------------------------------



% --------------------------------------------------------------
% 5. Give the commands gd = tf (0.5, [1 -0.8], 1); step (gd); and comment
clear; clc;
step(tf(0.5, [1 -0.8],1));
% (num) = 1 (gain)
% (den) = [1 -0.8] (constant)
% (delay) = 1
% --------------------------------------------------------------

% --------------------------------------------------------------
% 6. Give the commands g = tf (1, [10 1]); gd = c2d (g, 1); 
% [y1, t1] = step (g); [y2, t2] = step (gd); 
% figure (1); plot (t1, y1, t2, y2); 
% figure (2); step (g, gd); 
% figure (3); plot (t1, y1) 
% hold on; stairs (t2, y2); 
% Then use the xlabel, ylabel, title and legend commands to 
% identify each figure by comparing what is shown in each one.
clear; clc;
[y1,t1] = step( tf(1,[10 1]) );
[y2,t2] = step( c2d(tf(1,[10 1]), 1) );

% figure 1
figure(1);
plot(t1,y1,t2,y2);
xlabel('Time');
ylabel('Amplitude');
title('Continuous Chart');
legend('continuous');

% figure 2
figure(2);
step( tf(1,[10 1]), c2d(tf(1,[10 1]), 1));
xlabel('Time');
ylabel('Amplitude');
title('Continuous Chart x Stairs (Step)')
legend('continuous', 'step');

% figure 3
figure(3);
plot(t1,y1);
hold on;
stairs(t2,y2);
xlabel('Time');
ylabel('Amplitude');
title('Continuous Chart x Stairs (Plot)');
legend('continuous', 'plot');
hold off;
% --------------------------------------------------------------

% --------------------------------------------------------------
% 7. Simulate the system g = tf (1, [10 1]) for a unit ramp input.
clear; clc;
lsim(tf(1,[10 1]), 0:0.01:10 , 0:0.01:10);
% --------------------------------------------------------------

% --------------------------------------------------------------
% 8. Use the subplot command (4,4,1) to plot the 4 curves of activity 4, one on each graph of
% same picture.
clear; clc;
subplot(411);
step( tf(1, [1 2*0.1 1]));
title('');
subplot(412);
step( tf(1, [1 2*0.5 1]));
title('');
subplot(413);
step( tf(1, [1 2*0.7 1]));
title('');
subplot(414);
step( tf(1, [1 2*0.9 1]));
title('');

% --------------------------------------------------------------