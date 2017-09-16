#!/usr/bin/octave -q

% logplot.m
% Date  : 16 September 2017
% Author: Ankit Pati

grid on;

title('Logarithmic Plots');
xlabel('x');
ylabel('y');

a = [2 + i, 4 + 6i, -2i, 4, 5];
x = exp(-a);
y = a.^2;

semilogx(x, y, 'linewidth', 2, '-c', 'DisplayName', 'logarithmic x plot');
legend('show');
drawnow();
input("Press enter to continue...");

semilogy(x, y, 'linewidth', 2, '-m', 'DisplayName', 'logarithmic y plot');
legend('show');
drawnow();
input("Press enter to continue...");

loglog  (x, y, 'linewidth', 2, '-y', 'DisplayName', 'logarithmic plot');
legend('show');
drawnow();
input("Press enter to terminate...");

% end of logplot.m
