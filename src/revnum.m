#!/usr/bin/env -S octave -q

% revnum.m
% Date  : 28 October 2017
% Author: Ankit Pati

num = input('Enter a number: ', 's');

try
    if length(num) > 3
        error('Number larger than 3 digits.');
    end

    rev = fliplr(num);
    disp(rev);

catch err
    disp(err.message);

end

% end of revnum.m

%{
Enter a number: 435
534

Enter a number: 1234
Number larger than 3 digits.
%}
