function [fx expansion] = taylorseries(x, n)
% -- taylorseries(x, n)
%     Expand Taylor Series for the value of x upto n terms.
%
%     Taylor Series
%         f(x) = x - x³/3! + x⁵/5! - x⁷/7! + ...
%
%     Examples:
%
%         [fx expansion] = taylorseries(5, 20);
%         disp(["f(x) = " expansion " = " num2str(fx)]);
%            => f(x) =  x - x³/3! + x⁵/5! - x⁷/7! + x⁹/9! - x¹¹/11! + x¹³/13!
%                         - x¹⁵/15! + x¹⁷/17! - x¹⁹/19! + x²¹/21! - x²³/23!
%                         + x²⁵/25! - x²⁷/27! + x²⁹/29! - x³¹/31! + x³³/33!
%                         - x³⁵/35! + x³⁷/37! - x³⁹/39!
%                    = -0.95892

    fx = 0;
    expansion = '';

    sig = 1;

    for i = 1 : 2 : 2.*n-1
        fx += sig .* x.^i / factorial(i);
        sig = -sig;

        if i == 1
            expansion = strcat(expansion, ' x');
            continue;
        end

        if sig == -1 % sig has been reversed by now
            expansion = strcat(expansion, ' + ');
        else
            expansion = strcat(expansion, ' - ');
        end

        power = num2str(i);

        p = '';
        for digit = power
            switch digit
            case '0'
                digit = '⁰';
            case '1'
                digit = '¹';
            case '2'
                digit = '²';
            case '3'
                digit = '³';
            case '4'
                digit = '⁴';
            case '5'
                digit = '⁵';
            case '6'
                digit = '⁶';
            case '7'
                digit = '⁷';
            case '8'
                digit = '⁸';
            case '9'
                digit = '⁹';
            end

            p = strcat(p, digit);
        end

        expansion = strcat(expansion, ' x', p, '/', power, '!');
    end

    return;
end
