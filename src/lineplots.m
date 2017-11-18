#!/usr/bin/octave -q

% lineplots.m
% Date  : 12 August 2017
% Author: Ankit Pati

hold on;
grid on;

title('Multiple Lines');
xlabel('x');
ylabel('y');

x = 0 : 0.01 : 10;

plot(x,  2 .* x -  9, 'linewidth', 2, '-b' , 'DisplayName', '1');
plot(x,  5 .* x + 12, 'linewidth', 4, '-y' , 'DisplayName', '2');
plot(x,  9 .* x +  3, 'linewidth', 2, '--g', 'DisplayName', '3');
plot(x, 11 .* x - 11, 'linewidth', 4, ':r' , 'DisplayName', '4');
plot(x, 13 .* x +  4, 'linewidth', 2, '-.k', 'DisplayName', '5');

legend('show');

drawnow();
input('Press enter key to terminate...');

% end of lineplots.m
