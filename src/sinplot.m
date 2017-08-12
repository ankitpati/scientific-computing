#!/usr/bin/octave -q

% sinplot.m
% Date  : 05 August 2017
% Author: Ankit Pati

hold on;
grid on;

title('Sines of Functions of Time');
xlabel('Time (s)');
ylabel('Displacement (m)');

t = 0 : 0.01 : 10;

g = 3 .* t.^2;
h = sin(4 .* t + 4);
f = g .* h;

plot(t, g, 'color', 'blue' , 'linewidth', 2, 'DisplayName', 'g(t)');
plot(t, h, 'color', 'red'  , 'linewidth', 2, 'DisplayName', 'h(t)');
plot(t, f, 'color', 'green', 'linewidth', 2, 'DisplayName', 'f(t)');

legend('show');

drawnow();
input("Press enter key to terminate...");

% end of sinplot.m
