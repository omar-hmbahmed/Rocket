%Omar Ahmed
%The main script for the rocket simulation

% Model Parameters from Table in Session 3 Page 22
Mdata.M = 2.9e6; % kg
Mdata.burnTime = 150; % Seconds
Mdata.Th = 34e6; % Newtons
Mdata.g = 9.81; % Acceleration due to gravity m/s^2
Mdata.initialFuelMass = 2.15e6; %Mass of fuel before burning in kg
Mdata.burnRate = Mdata.initialFuelMass / Mdata.burnTime; %in kgs^-1
Mdata.finalMass = Mdata.M - Mdata.initialFuelMass; %Final mass of fuel in kg

%1. Initialise the values
 %1.1 Initialise any rocket constants needed for force formula
 M = 2900000;
 g = 9.81;
 %1.2 Set the initial value of a, v and h (all zero)
 a = 0;
 v = 0;
 h = 0;
 %1.3 Set the start and end value of t (0 to 300 seconds), and a step size (0.1)
 tstart = 0;
 tend = 300;
 dt = 0.1;
 %1.4 Define a vector of time steps called T
 T = tstart:dt:tend;
 %1.5 Initialise vectors of zeros to store calculated values (vectors called A,V,H,Mass)
 n = length(T);
 A = zeros(1,n);
 V = zeros (1,n);
 H = zeros(1,n);
 Mass = zeros(1,n);

%2. Repeat for each time step.
for k = 1:n
    %3. Store the current values of a, v, h, and m for plotting later.
    A(k) = a;
    V(k) = v;
    H(k) = h;
    Mass(k) = M;
    %4. Calculate the acceleration and mass
    a = GetAcceleration(T(k),Mdata);
    M = GetMass(T(k),Mdata);
    %5. Use Euler's method to find the height at the next step.
        h = h + dt * v;
    %6. Use Euler's method to find the velocity at the next step.
        v = v + dt * a;
end
%7. Plot the data.
PlotGraphs(A,V,H,T,Mass)
%After 150s, acceleration is 0. This is expected as there is no longer any
%fuel
%Mass decreases linearly between 0 and 150s

