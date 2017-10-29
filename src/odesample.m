function [Ydot] = odesample(t, Y)
% -- odesample(x1, x2, u)
%     Sample of an ODE to solve.

    A = [1 -2; -9 5];
    B = [0; 0.4];
    u = 1;

    Ydot = A*Y + B*u;

    return;
end
