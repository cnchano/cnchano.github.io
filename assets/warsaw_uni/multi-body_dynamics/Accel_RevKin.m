function [F_accel] = Accel_RevKin(Ri, dfi_i, SA, Rj, dfi_j, SB)

F_accel = Ri * SA * dfi_i^2 - Rj * SB * dfi_j^2;

end