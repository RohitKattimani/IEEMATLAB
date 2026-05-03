% MATLAB script for Balanced Delta Load Analysis
VL = 415;               % Line Voltage
Zph_complex = 8 + 6j;   % Phase Impedance in complex form

% 1. Phase Calculations
Vph = VL;               % In Delta, Vph = VL
Iph_complex = Vph / Zph_complex;
Iph_mag = abs(Iph_complex);

% 2. (a) Line Current Calculation
IL = sqrt(3) * Iph_mag;

% 3. (b) Power Calculations
% Using complex power: S = 3 * Vph * conj(Iph)
S_total_complex = 3 * Vph * conj(Iph_complex);

P = real(S_total_complex); % Active Power
Q = imag(S_total_complex); % Reactive Power
S_mag = abs(S_total_complex); % Apparent Power
PF = P / S_mag;

% Display Results
fprintf('--- Delta Connected Load Results ---\n');
fprintf('(a) Line Current (IL):        %.2f A\n', IL);
fprintf('(b) Active Power (P):         %.2f W\n', P);
fprintf('    Reactive Power (Q):       %.2f VAR\n', Q);
fprintf('    Apparent Power (S):       %.2f VA\n', S_mag);
fprintf('    Power Factor (cos phi):   %.2f (lagging)\n', PF);
