units = symunit();

alpha = rand();
beta = rand();

constA = 41.5 * units.rad * units.s^(-2);
constC = alpha * units.s^(-1);
constD = beta * units.rad * units.volt^(-1) * units.s^(-2);
n = 495 * units.rad * units.m^(-1);
g = 9.81 * units.m * units.s^(-2);

x0 = [0.17; 0; 0; 0];
noisePower = 0.002;
T = 0.01 * units.s;


A = [0 1 0 0; constA 0 0 (constA .* constC)./(n .* g); 0 0 0 1; 0 0 0 -constC];
B = [0; (constA .* constD)./(n .* g); 0; constD];
C = [1 0 0 0];
D = zeros(1,4);

Ts = 0.66;