function [r1 r2] = quadroots(a, b, c)
% -- quadroots(a, b, c)
%     Roots of quadratic equation with co-efficients a, b, and c.
%
%     The equation is assumed to be
%         ax² + bx + c = 0
%
%     Examples:
%
%         [r1 r2] = quadroots(1, 2, 1); % 1x² + 2x + 1 = 0
%         disp(['Root 1: ' num2str(r1) ', Root 2: ' num2str(r2)]);
%            => Root 1: -1, Root 2: -1

    d = b*b - 4*a*c;

    r1 = (-b + sqrt(d)) / 2*a;
    r2 = (-b - sqrt(d)) / 2*a;

    return;
end
