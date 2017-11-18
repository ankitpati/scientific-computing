#!/usr/bin/octave -q

% logplot.m
% Date  : 16 September 2017
% Author: Ankit Pati

grid on;

a = [2 + i, 4 + 6i, -2i, 4, 5];
x = exp(-a);
y = a.^2;

subplot(311);
semilogx(x, y, 'linewidth', 2, '-c', 'DisplayName', 'logarithmic x plot');
legend('show');

subplot(312);
semilogy(x, y, 'linewidth', 2, '-m', 'DisplayName', 'logarithmic y plot');
legend('show');

subplot(313);
loglog  (x, y, 'linewidth', 2, '-y', 'DisplayName', 'logarithmic plot');
legend('show');

drawnow();
input('Press enter to terminate...');

% end of logplot.m
