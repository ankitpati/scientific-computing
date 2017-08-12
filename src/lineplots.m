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

plot(x,  2 .* x -  9, 'color', 'blue'  , 'linewidth', 2, 'linestyle', '-' ,
                                                            'DisplayName', '1');

plot(x,  5 .* x + 12, 'color', 'yellow', 'linewidth', 4, 'linestyle', '-' ,
                                                            'DisplayName', '2');

plot(x,  9 .* x +  3, 'color', 'green' , 'linewidth', 2, 'linestyle', '--',
                                                            'DisplayName', '3');

plot(x, 11 .* x - 11, 'color', 'red'   , 'linewidth', 4, 'linestyle', ':' ,
                                                            'DisplayName', '4');

plot(x, 13 .* x +  4, 'color', 'black' , 'linewidth', 2, 'linestyle', '-.',
                                                            'DisplayName', '5');

legend('show');

drawnow();
input("Press enter key to terminate...");

% end of lineplots.m
