#!/usr/bin/octave -q

% piechart.m
% Date  : 16 September 2017
% Author: Ankit Pati

names = {'A', 'B', 'C', 'D', 'E'};
marks = [ 20,   7,  10,   4,  30];
expld = [  0,   1,   0,   1,   0];

pie(marks, names, expld);

drawnow();
input("Press enter key to terminate...");

% end of piechart.m
