function [F_constraint] = Constraint_RevKin(r_i, Ri, SA, r_j, Rj, SB)
%
F_constraint = r_i + Ri*SA - (r_j + Rj*SB);
end