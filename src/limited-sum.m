#!/usr/bin/octave -q

% limited-sum.m
% Date  : 28 September 2017
% Author: Ankit Pati

sum = 0;

for i = 1:10
    num = input("Enter a number: ");

    sum += num;

    if sum > 20
        disp("Sum exceeded 20.\n");
        break;
    end

    disp(["Sum = " num2str(sum) "\n"]);
end

% end of limited-sum.m
