#!/usr/bin/octave -q

% pint3liter.m
% Date  : 12 August 2017
% Author: Ankit Pati

g = input("Gallons ? ");
p = input("Pints   ? ");

l = (g.*8 + p) / 1.76;

printf("Liters  = %u\n", l);

% end of pint3liter.m
