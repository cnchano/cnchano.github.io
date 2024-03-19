function [F_constraint] = Constraint_TransKin(r_i, Ri, SA, r_j, Rj, SB, v)
%   Eq 5.21
F_constraint = (Rj * v)' * (r_j + Rj * SB - (r_i + Ri * SA));
end