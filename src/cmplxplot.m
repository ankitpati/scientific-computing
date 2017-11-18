#!/usr/bin/octave -q

% cmplxplot.m
% Date  : 16 September 2017
% Author: Ankit Pati

hold on;
grid on;

title('Complex Plots');
xlabel('x');
ylabel('y');

x = [ 2  3  4  5  6];
y = [ 9  8  7 10  6];
a = [2 + i, 4 + 6i, -2i, 4, 5];

plot(x, y, 'linewidth', 4, '-r', 'DisplayName', 'x vs. y');
plot(   x, 'linewidth', 2, '-g', 'DisplayName', 'indices vs. values for x');
plot(   a, 'linewidth', 2, '-b', 'DisplayName', 'imaginary plot');
plot(a, y, 'linewidth', 2, '-k', 'DisplayName', 'imaginary vs. real');

plot3(x, a, 'linewidth', 2, '-c', 'DisplayName', 'real vs. real-part vs. imag');

line(x, y, 'linewidth', 2, 'color', 'yellow', 'linestyle', '--',
                                 'DisplayName', 'line(x, y)');

legend('show');

drawnow();
input('Press enter to terminate...');

% end of cmplxplot.m
