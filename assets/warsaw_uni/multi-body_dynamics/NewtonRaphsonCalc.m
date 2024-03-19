function q=NewtonRaphsonCalc(q0,t)
% q=NewtonRaphson(q0,t)
%   The procedure uses Newton-Raphson method to solve the set of nonlinear equations.
% In:
%   q0 - initial approximation,
%   t - the current time instant.
% Out:
%   q - the solution.
%
% The set of nonlinear equations must be defined in Constraints.m.
% The constraint Jacobian must be defined in Jacobian.m.
%

q=q0;
F=constraintCalc(q,t);
iter=1; 
%F_norm = norm(F);
%Fq=JacobianCalc(q);
while ( (norm(F)>1e-10) && (iter <= 25) )
    F=constraintCalc(q,t);
    Fq=JacobianCalc(q);
    
    
    %Fq_Approx = ApproxJacobianCalc(q);
    %q_approx=q-Fq_Approx\F;
    q=q-Fq\F;  % Fq\F jsolves the linear equation set: Fq*q=F
    iter=iter+1;
end
if iter >= 25
    disp('ERROR: No convergence after 25 iterations ');
    q=q0;

end

