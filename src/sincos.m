#!/usr/bin/octave -q

% sincos.m
% Date  : 05 August 2017
% Author: Ankit Pati

hold on;
grid on;

title('Sine and Cosine Waves');
xlabel('Time (s)');
ylabel('Displacement (m)');

x = 0 : 0.01 : 2*pi;

plot(x, sin(x), 'color', 'blue', 'linewidth', 2, 'DisplayName', 'Sine');
plot(x, cos(x), 'color', 'red',  'linewidth', 2, 'DisplayName', 'Cosine');

legend('show');

drawnow();
input('Press enter to terminate...');

% end of sincos.m
