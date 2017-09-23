#!/usr/bin/octave -q

% meshplot.m
% Date  : 16 September 2017
% Author: Ankit Pati

[x, y] = meshgrid(-5 : 0.1 : 5);

f = 2 ./ (x.^2 + y.^2 + 1);

mesh(f);

drawnow();
input("Press enter key to terminate...");

% end of meshplot.m
