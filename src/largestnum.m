#!/usr/bin/octave -q

% largestnum.m
% Date  : 23 September 2017
% Author: Ankit Pati

mxm = [];
n = input("How many numbers? ");

for i = 1:n
    in = input(["Number " num2str(i) "? "]);

    if isempty(mxm)
        mxm = in;
    else
        if in > mxm
            mxm = in;
        end
    end
end

disp(["Maximum number is " num2str(mxm) "."]);

% end of largestnum.m
