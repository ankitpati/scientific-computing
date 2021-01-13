#!/usr/bin/env -S octave -q

% simulde.m
% Date  : 21 November 2017
% Author: Ankit Pati

Y = [10; 5];
[t Y] = ode45(@myode, linspace(0, 100), Y);

grid on;

subplot(211);
xlabel('t');
ylabel('y');
plot(t, Y(:, 1), 'linewidth', 2);

subplot(212);
xlabel('t');
ylabel('y');
plot(t, Y(:, 2), 'linewidth', 2);

drawnow();
input('Press enter key to terminate...');

% end of simulde.m
