% MATLAB script for Series RLC Resonance Analysis
V = 400;          % Supply Voltage
I_target = 10;    % Current given in problem
R = 40;           % Resistance
L = 50.07e-3;     % Inductance in Henries
f = 50;           % Frequency

% 1. Calculate Impedance from Ohm's Law
Z = V / I_target;

% 2. Power Factor
PF = R / Z;

% 3. Calculate Inductive Reactance
XL = 2 * pi * f * L;

% 4. Since Z = R (40 = 40), the circuit is at resonance (XL = XC)
XC = XL;
C = 1 / (2 * pi * f * XC);

% Display results
fprintf('--- Series RLC Results ---\n');
fprintf('Calculated Impedance (Z): %.2f ohms\n', Z);
fprintf('Power Factor (cos phi):   %.2f (Unity)\n', PF);
fprintf('Inductive Reactance (XL): %.2f ohms\n', XL);
fprintf('Required Capacitor (C):   %.2f microFarads\n', C * 1e6);
