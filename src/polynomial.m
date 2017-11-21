#!/usr/bin/octave -q

% polynomial.m
% Date  : 19 August 2017
% Author: Ankit Pati

p  = [4, 2, 0, 1, -9];  % p(s) = 4s⁴ + 2s³ + s - 9
q_ = [3, 4];            % q(s) = 3s + 4
q  = [0, 0, 0, 3,  4];  % 0-pad to align with p

val = polyval(p, 9);    % p(9)
printf('p(s) at s = 9 is %.2f.\n\n', val);

sum = p + q;
disp('Sum = '), polyout(sum), disp('');

dif = p - q;
disp('Difference = '), polyout(dif), disp('');

mul = conv(p, q);
%mul = p * transpose(q);    % identical to the above
disp('Product = '), polyout(q), disp('');

[quo, rem] = deconv(p, polyreduce(q)); % 0-padded polynomials don’t pass through filter
disp('Quotient  = '), polyout(quo),
disp('Remainder = '), polyout(rem), disp('');

der = polyder(p);
disp('Derivative of p = '), polyout(der), disp('');

int = polyint(p, 4);        % constant of integration, k = 4
disp('Integral of p = '), polyout(int), disp('');

int = polyint(q, 4);
disp('Integral of q = '), polyout(int), disp('');

rot = roots(p);
disp('Roots of p = '), disp(rot), disp('');

pwr = poly([-1, -2]);       % finds polynomial whose roots are in given array
disp('Polynomial with roots -1, -2 = '), polyout(pwr), disp('');

A = [
    0, 1;
    2, 3;
];
chr = poly(A);  % finds characteristic polynomial of A, which is, [1, -3, -2]
                % that translates to s² - 3s - 2
disp('Characteristic Polynomial of A = '), polyout(chr), disp('');

X = [  2,   5,   7];
Y = [ 24, 156, 384];
N = 3;
pft = polyfit(X, Y, N);
disp('Polyfit for X and Y in N dimensions = '), polyout(pft), disp('');

Z = [4, 2, 3];  % Z(X) = 4X² + 2X + 3
X = [           % must be a square matrix
    0, 1;
    2, 3;
];
vlm = polyvalm(Z, X);   % substitutes square matrix X in polynomial Z
disp('Z(X) at X = [0, 1; 2, 3] = '), disp(vlm), disp('');

% end of polynomial.m
