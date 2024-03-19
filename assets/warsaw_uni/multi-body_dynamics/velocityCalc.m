function [dq,Fq]=velocityCalc(q,t)

    % dq=velocity(q,t)
    % Procedure to solve the velocity problem.
    % The problem of position must be solved previous to this one.

    % Input:
    % q - absolute coordinates of multibody system
    % t - time, for which the solution is sought

    % Output:
    % dq - Derivatives calculated absolute coordinates terms of time

    % Right side of the system of linear equations - derivatives terms of time.
    %{
    L_87 = sqrt((Init_config(1,12) - Init_config(1,13))^2 + (Init_config(2,12) - Init_config(2,13))^2);
    L_109 = sqrt((Init_config(1,6) - Init_config(1,7))^2 + (Init_config(2,6) - Init_config(2,7))^2);
    %}
    dMotion_87 =  1.5*0.05*cos(1.5*t);
    dMotion_109 = 1.5*0.05*cos(1.5*t);
    Ft=[zeros(28,1); -dMotion_87; -dMotion_109];


    % Matrix system of equations
    Fq=JacobianCalc(q);

    % Velocity calculation
    dq=-Fq\Ft;
end