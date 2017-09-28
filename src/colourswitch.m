#!/usr/bin/octave -q

% colourswitch.m
% Date  : 28 September 2017
% Author: Ankit Pati

for i = 1:10
    choice = input("Choose a Colour (Red, Green, Blue): ", "s");

    switch choice
        case {"Red" "red" "RED"}
            disp("Red colour is chosen.\n");

        case {"Green" "green" "GREEN"}
            disp("Green colour is chosen.\n");

        case {"Blue" "blue" "BLUE"}
            disp("Blue colour is chosen.\n");

        case {"Done" "done" "DONE"}
            disp("Done!");
            break;

        otherwise
            error("Invalid Selection");
    end
end

% end of colourswitch.m
