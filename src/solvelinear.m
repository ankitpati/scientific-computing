#!/usr/bin/env -S octave -q

% solvelinear.m
% Date  : 12 August 2017
% Author: Ankit Pati

coeffs = [
      2,   1,   1;
     -1,   1,  -1;
      1,   2,   3;
];

results = [
      2;
      3;
    -10;
];

fprintf('\nUsing linsolve...\n');
x = linsolve(coeffs, results);
fprintf('x = %.2f\ny = %.2f\nz = %.2f\n', x(1), x(2), x(3));

fprintf('\nUsing \\...\n');
x = coeffs \ results;
fprintf('x = %.2f\ny = %.2f\nz = %.2f\n', x(1), x(2), x(3));

fprintf('\nUsing inv...\n');
x = inv(coeffs) * results;
fprintf('x = %.2f\ny = %.2f\nz = %.2f\n', x(1), x(2), x(3));

% end of solvelinear.m
