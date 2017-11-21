function dx = myode(t, Y)
% -- myode(t, Y)
%     A pair of simultaneous DE to solve.
    dx(1) = -Y(2) ./ 2 + (Y(1) .* Y(2)) ./ 20;
    dx(2) = Y(1) + (Y(1) .* Y(2)) ./ 10;
    return;
end
