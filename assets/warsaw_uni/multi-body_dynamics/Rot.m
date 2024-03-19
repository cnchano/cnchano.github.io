function R=Rot(fi)
% R=Rot(fi)
%   Rotation matrix (2x2)
% In:
%   fi - the angle (rad).
% Wyj�cie:
%   R - thematrix.
%

R=[cos(fi) -sin(fi);sin(fi) cos(fi)];

