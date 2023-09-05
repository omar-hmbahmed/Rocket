%Omar Ahmed
%The main script for the rocket simulation
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
 %1.5 Initialise vectors of zeros to store calculated values (vectors called A,V,H)
 n = length(T);
 A = zeros(1,n);
 V = zeros (1,n);
 H = zeros(1,n);

%2. Repeat for each time step.
for k = 1:n
    %3. Store the current values of a, v and h for plotting later.
    A(k) = a;
    V(k) = v;
    H(k) = h;
    %4. Calculate the acceleration.
    a = GetAcceleration(34000000,M,g,150,T(k));
    %5. Use Euler's method to find the height at the next step.
        h = h + dt * v;
    %6. Use Euler's method to find the velocity at the next step.
        v = v + dt * a;
end
%7. Plot the data.
PlotGraphs(A,V,H,T)
%Before 150s, acceleration will take the value of 1.91ms^-2 and after 150s
%acceleration will take the value of 0ms^-2. This is confirmed by the shape
%of the graph.
%The velocity and height graphs look reasonable when compared to the
%accleration graph.

