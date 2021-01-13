#!/usr/bin/env -S octave -q

% examples.m
% Date  : 28 October 2017
% Author: Ankit Pati

% input
g = input('Gallons ? ');
p = input('Pints   ? ');
l = (g.*8 + p) / 1.76;
fprintf('Liters  = %u\n', l);
%{
Gallons ? 5
Pints   ? 2
Liters  = 23.8636
%}

% menu
colours = {'Red', 'Green', 'Blue', 'Black'};
choice = menu('Choose a Colour', colours);
if choice != 0
    fprintf('Chosen colour is %s.\n', colours{choice});
else
    disp('No colour chosen.');
end
%{
Chosen colour is Blue.
%}

% switch
choice = input('Choose a Colour (Red, Green, Blue): ', 's');
switch choice
    case {'r' 'R' 'Red' 'red' 'RED'}
        disp('Red colour is chosen.\n');
    case {'g' 'G' 'Green' 'green' 'GREEN'}
        disp('Green colour is chosen.\n');
    case {'b' 'B' 'Blue' 'blue' 'BLUE'}
        disp('Blue colour is chosen.\n');
    case {'d' 'D' 'Done' 'done' 'DONE'}
        disp('Done!');
    otherwise
        error('Invalid Selection');
end
%{
Green colour is chosen.
%}

% keyboard
a = 12;
b =  4;
x = a + b;
y = a / b;
keyboard('Inspect y; set y to ten> ');
z = a - y + 3;
fprintf('Value of z is %d.\n', z);
%{
Value of z is 5.
%}

% format
format long e;
disp(43500);
%{
   4.35000000000000e+04
%}

% break
sum = 0;
for i = 1:10
    num = input('Enter a number: ');
    sum += num;
    if sum > 20
        disp('Sum exceeded 20.\n');
        break;
    end
    disp(['Sum = ' num2str(sum) '\n']);
end
%{
Enter a number: 5
Sum = 5

Enter a number: 20
Sum exceeded 20.
%}

% continue
for i = 1:10
    if i < 5
        continue;
    end
    disp(i);
end
%{
5
6
7
8
9
10
%}


% pause
disp('hello');
pause(3);
disp('bye');
%{
hello
(3 second delay)
bye
%}

% save
num1 = 43;
num2 = 5;
save 'my-save';
%{
(no output)
%}

% load
load 'my-save';
disp(num1);
disp(num2);
%{
43
5
%}

% end of examples.m
