% MATLAB script for Series RL Circuit Analysis
V = 200;          % Supply Voltage (V)
f = 50;           % Frequency (Hz)
R = 50;           % Resistance (Ohms)
L = 100e-3;       % Inductance (Henries)

% 1. Calculate Inductive Reactance
XL = 2 * pi * f * L;

% 2. Calculate Impedance (Magnitude)
Z_mag = sqrt(R^2 + XL^2);

% 3. Calculate Current
I = V / Z_mag;

% 4. Calculate Power Factor
PF = R / Z_mag;

% Displaying Results
fprintf('--- Series RL Circuit Results ---\n');
fprintf('Inductive Reactance (XL): %.3f ohms\n', XL);
fprintf('Total Impedance (Z):      %.3f ohms\n', Z_mag);
fprintf('Total Current (I):        %.3f A\n', I);
fprintf('Power Factor (cos phi):   %.4f (lagging)\n', PF);
