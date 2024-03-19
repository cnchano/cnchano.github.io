function [dF_dr_i, dF_dphi_i, dF_dr_j, dF_dphi_j] = Jacobian_TransJ(r_i, Ri, r_j, Rj, SA, v)

%   Eq 5.48 - 51 Lecture 5
Omega = [0 -1; 1 0];
dF_dr_i = -(Rj * v)';
dF_dphi_i = -(Rj*v)' * Omega * Ri * SA;
dF_dr_j = (Rj*v)';
dF_dphi_j = -(Rj*v)' * Omega * (r_j - r_i - Ri * SA);
end