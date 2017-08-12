#!/usr/bin/octave -q

% trigverify.m
% Date  : 12 August 2017
% Author: Ankit Pati

hold on;
grid on;

title('Verify Trigonometric Identities');
xlabel('Time (s)');
ylabel('Displacement (m)');

x = 0 : 0.01 : 10;

f      = sin(4 .* x);
f_dash = 4 .* sin(x) .* cos(x) - 8 .* sin(x).^2 .* cos(x);

plot(x, f     , 'color', 'blue' , 'linewidth', 4, 'DisplayName', 'sin 4x');
plot(x, f_dash, 'color', 'red'  , 'linewidth', 2, 'DisplayName',
                                          '4 sin(x) cos(x) - 8 sin²(x) cos(x)');

g      = cos(2 .* x);
g_dash = 1 - 2 .* sin(x).^2;

plot(x, g     , 'color', 'green', 'linewidth', 4, 'DisplayName', 'cos 2x');
plot(x, g_dash, 'color', 'black', 'linewidth', 2, 'DisplayName',
                                                               '1 - 2 sin²(x)');

legend('show');

drawnow();
input("Press enter key to terminate...");

% end of trigverify.m
