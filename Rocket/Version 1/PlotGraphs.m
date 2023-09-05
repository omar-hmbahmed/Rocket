%Omar Ahmed
%Writing a function to plot graphs
function PlotGraphs(A,V,H,T)

subplot(3,1,1) %Top Graph
plot(T,A,'g')
title ('Acceleration')
xlabel('t')
ylabel('a')
grid

subplot(3,1,2) %Middle Graph
plot(T,V,'b')
title ('Velocity')
xlabel('t')
ylabel('v')
grid

subplot(3,1,3) %Bottom Graph
plot(T,H,'r')
title ('Height')
xlabel('t')
ylabel('h')
grid

sgtitle('Version 1: Constant Mass and Constant Thrust Model')


