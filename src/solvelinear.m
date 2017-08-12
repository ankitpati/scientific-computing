#!/usr/bin/octave -q

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

disp("\nUsing linsolve...");
opts.TRANSA = false; % TRANSA is buggy in Octave 4.0.0
x = linsolve(coeffs, results, opts);
printf("x = %.2f\ny = %.2f\nz = %.2f\n", x(1), x(2), x(3));

disp("\nUsing \\...");
x = coeffs \ results;
printf("x = %.2f\ny = %.2f\nz = %.2f\n", x(1), x(2), x(3));

disp("\nUsing inv...");
x = inv(coeffs) * results;
printf("x = %.2f\ny = %.2f\nz = %.2f\n", x(1), x(2), x(3));

% end of solvelinear.m
