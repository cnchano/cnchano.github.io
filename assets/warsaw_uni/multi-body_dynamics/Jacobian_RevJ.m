function [dF_dr_i, dF_dfi_i, dF_dr_j, dF_dfi_j] = Jacobian_RevJ(Ri, SA, Rj, SB)

Omega = [0 -1; 1 0];
%   Eq 5.30-33 
dF_dr_i = eye(2);
dF_dfi_i = Omega * Ri * SA;
dF_dr_j = -eye(2);
dF_dfi_j = -Omega * Rj * SB;
end