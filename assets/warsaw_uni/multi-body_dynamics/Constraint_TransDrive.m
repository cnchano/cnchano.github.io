function [F_constraint] = Constraint_TransDrive(r_i, Ri, SA, r_j, Rj, SB, u, F_motion)
%
%   Eq 5.27
F_constraint = (Rj*u)'*(r_j + Rj*SB - r_i - Ri*SA) - F_motion;
end