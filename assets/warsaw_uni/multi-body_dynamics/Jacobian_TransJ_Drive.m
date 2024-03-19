function [dFt_dr_i, dFt_dphi_i, dFt_dr_j, dFt_dphi_j] = Jacobian_TransJ_Drive(r_i, Ri, r_j, Rj, SA, u)
%KINROTCONSTRAINT Summary of this function goes here
%   Eq 5.48 - 51 Lecture 5
Omega = [0 -1; 1 0];

dFt_dr_i = -(Rj * u)';
dFt_dphi_i = -(Rj*u)' * Omega * Ri * SA;
dFt_dr_j = (Rj*u)';
dFt_dphi_j = -(Rj*u)' * Omega * (r_j - r_i - Ri * SA);

end