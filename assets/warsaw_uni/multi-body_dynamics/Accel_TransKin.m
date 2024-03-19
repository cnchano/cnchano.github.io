function [F_accel] = Accel_TransKin(r_i, Ri, dr_i, dfi_i, r_j, Rj, dr_j, dfi_j, SA, v)

%   Eq 5.58 Lecture 5
Omega=[0 -1; 1 0];
F_accel = (Rj * v)' * (2 * Omega * (dr_j - dr_i) * dfi_j + (r_j - r_i) * dfi_j^2 - Ri * SA * (dfi_j - dfi_i)^2);
end