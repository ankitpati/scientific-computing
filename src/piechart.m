#!/usr/bin/octave -q

% piechart.m
% Date  : 16 September 2017
% Author: Ankit Pati

marks = [ 20,   7,  10,   4,  30];
names = {'A', 'B', 'C', 'D', 'E'};
expld = [  0,   1,   0,   1,   0];

pie(marks, names, expld);

drawnow();
input('Press enter key to terminate...');

% end of piechart.m
