#!/usr/bin/octave -q

% colourmenu.m
% Date  : 26 August 2017
% Author: Ankit Pati

colours = {'Red', 'Green', 'Blue', 'Black'};

choice = menu('Choose a Colour', colours);

if choice != 0
    fprintf('Chosen colour is %s.\n', colours{choice});
else
    disp('No colour chosen.');
end

% end of colourmenu.m
