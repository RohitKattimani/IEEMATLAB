% MATLAB script to verify shunt resistance
V = 50;
I = 2.5; % Current from problem statement
R_series = 15;
R_p_orig = 15; % Equivalent of two 30 ohm resistors

R_total = V / I;
R_parallel_target = R_total - R_series;

% Calculating the shunt resistance Rs
% Formula: 1/R_target = 1/R_p_orig + 1/Rs
Rs = 1 / ( (1/R_parallel_target) - (1/R_p_orig) );

fprintf('Total Resistance Required: %.2f ohms\n', R_total);
fprintf('Required Parallel resistance: %.2f ohms\n', R_parallel_target);
fprintf('Value of Shunt Resistance: %.2f ohms\n', Rs);
