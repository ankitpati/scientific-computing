#!/usr/bin/octave -q

% chkoverflow.m
% Date  : 12 August 2017
% Author: Ankit Pati

radius   =  3; % 3m
height   = 15; % 15m
flowrate = 15; % 15m³/min

volume    = pi .* radius.^2 .* height;
time2fill = volume / flowrate;

if time2fill <= 120 % 120 min
    disp("The tank overflows after 120 minutes.");
else
    disp("The tank does not overflow after 120 minutes.");
end

% end of chkoverflow.m
