#!/usr/bin/octave -q

% poleplot.m
% Date  : 16 September 2017
% Author: Ankit Pati

hold on;
grid on;

title('Polar Plots');
xlabel('x');
ylabel('y');

t = linspace(-pi/2, pi/2);
f = sin(4*t);

polar(t, f, ';sin 4t;');

legend('show');

drawnow();
input('Press enter key to terminate...');

% end of poleplot.m
