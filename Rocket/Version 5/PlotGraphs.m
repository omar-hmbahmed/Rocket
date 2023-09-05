%Omar Ahmed
%Writing a function to plot graphs
function PlotGraphs(A,V,H,T,Mass)

subplot(4,1,1) %Top Graph
plot(T,A,'g')
title ('Acceleration')
xlabel('t')
ylabel('a')
%Plots max a
[maxa,I] = max(A);
maxt = T(I);
hold on
plot(maxt,maxa,'r*')
mytextmax = [' max = ',num2str(maxa)];
text(maxt,maxa,mytextmax)
%Plots minimum a
[mina,I] = min(A);
mint = T(I);
plot(mint,mina,'r*')
mytextmin = [' min = ',num2str(mina)];
text(mint,mina,mytextmin)
grid

subplot(4,1,2) %Second Graph
plot(T,V,'b')
title ('Velocity')
xlabel('t')
ylabel('v')


grid

subplot(4,1,3) %Third Graph
plot(T,H,'r')
title ('Height')
xlabel('t')
ylabel('h')
grid

subplot(4,1,4) %Fourth Graph
plot(T,Mass,'r')
title ('Mass')
xlabel('t')
ylabel('m')
grid

sgtitle('Version 4: Variable Mass')


