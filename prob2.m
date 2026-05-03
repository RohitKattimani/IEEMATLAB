% MATLAB script to solve for Node Voltages
% Matrix Form: A * V = B

syms V2 V4

% Known node voltages
V1 = 125;
V3 = 50;

% KCL equations
eq1 = (V2 - V1)/5 + (V2 - V4)/2.5 + (V2 - V3)/7.5 == 0;
eq2 = (V4 - V1)/17.5 + (V4 - V2)/2.5 == 2;

% Solve
sol = solve([eq1, eq2], [V2, V4]);

V2_val = double(sol.V2)
V4_val = double(sol.V4)

% Display results
fprintf('--- Calculated Node Voltages ---\n');
fprintf('Node 1 (Fixed): 125.00 V\n');
fprintf('Node 2 (Middle): %.2f V\n', V2);
fprintf('Node 3 (Right):  %.2f V\n', V3);
