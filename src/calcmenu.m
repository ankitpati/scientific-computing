#!/usr/bin/octave -q

% calcmenu.m
% Date  : 28 October 2017
% Author: Ankit Pati

num1 = input('Enter num1: ');
num2 = input('Enter num2: ');

operations = {'Addition', 'Subtraction', 'Multiplication', 'Division'};
choice = menu('Which Operation?', operations);

if choice != 0
    format long;

    switch operations{choice}
    case 'Addition'
        disp(num1 + num2);
    case 'Subtration'
        disp(num1 - num2);
    case 'Multiplication'
        disp(num1 * num2);
    case 'Division'
        disp(num1 / num2);
    otherwise
        disp('Invalid operation');
    end

else
    disp('No operation chosen.');

end

% end of calcmenu.m

%{
Output
Enter num1: 43
Enter num2: 5
 215
%}
