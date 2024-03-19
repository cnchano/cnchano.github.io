function [pos_init, CofM] = Init_config()
%INITIAL COORDINATES OF ALL POINTS IN GLOBAL FRAME
%m
pos_init.A = [-1;0.2];

pos_init.B = [-0.7; 0.8];

pos_init.D = [-0.2; 0.5];

pos_init.E = [0.1; 0.8];

pos_init.F = [0.9; 0.7];

pos_init.G = [0.3;0.6];

pos_init.H = [0.7;-0.4];

pos_init.I = [0.7;0.3];

pos_init.J = [0;0.9];

pos_init.K = [-1.2;0.6];

pos_init.L = [0.6;0.3];

pos_init.M = [0.2;0.6];

pos_init.N = [0.4;-0.2];
%%%%%%%%%%%%%%%%%%%%%%%%
CofM.C1 = [-0.95; 0.55];

%disp(pos_init)
end