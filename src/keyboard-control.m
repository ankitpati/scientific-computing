#!/usr/bin/octave -q

% keyboard-control.m
% Date  : 26 August 2017
% Author: Ankit Pati

a = 12;
b =  4;

x = a + b;
y = a / b;

keyboard('Inspect y; set y to ten> ');

z = a - y + 3;
printf('Value of z is %d.\n', z);

% end of keyboard-control.m
