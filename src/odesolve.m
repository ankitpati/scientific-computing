#!/usr/bin/octave -q

% odesolve.m
% Date  : 28 October 2017
% Author: Ankit Pati

grid on;

title('Solve ODEs');
xlabel('t');
ylabel('y');

y0 = 1;
[t y] = ode45(@(t, y) -2.*y, linspace(0, 10), y0);
plot(t, y, 'linewidth', 2, '-b', 'DisplayName', '-2y');

legend('show');
drawnow();
input('Press enter key to continue...');

Y0 = [1; 1];
[t y] = ode45(@odesample, linspace(0, 10), Y0);
plot(t, y, 'linewidth', 2, '-r', 'DisplayName', 'odesample');

legend('show');
drawnow();
input('Press enter key to terminate...');

% end of odesolve.m
