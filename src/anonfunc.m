#!/usr/bin/octave -q

% anonfunc.m
% Date  : 23 September 2017
% Author: Ankit Pati

f = @(x) x.^2 + 2.*x + 3; % f(x) = x² + 2x + 3
disp(['f(5) = ' num2str(f(5)) '\n']);

% end of anonfunc.m
