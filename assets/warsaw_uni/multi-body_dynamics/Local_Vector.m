function [vect] = Local_Vector()
%LOCAL FRAME VECTORS TO JOINTS ON BODY
[pos_init, CofM] = Init_config();
%Nomenclature: SA to SB is written as SAB

%Global to H (SA)
vect.S010 = pos_init.H;
%C10 frame to H (SB)
vect.S100 = zeros(2,1);

%Global to N
vect.S08 = pos_init.N;
%C8 frame to N
vect.S80 = zeros(2,1);

%Global to L
vect.S03 = pos_init.L;
%C8 frame to L
vect.S30 = zeros(2,1);

% ref_C3 to G
vect.S39 = pos_init.G - pos_init.L;
% ref_C9 to G
vect.S93 = zeros(2,1);

% ref_C3 to F
vect.S32 = pos_init.F - pos_init.L;
% ref_C2 to F
vect.S23 = pos_init.F - pos_init.J;

% ref_C3 to I
vect.S34 = pos_init.I - pos_init.L;
% ref_C4 to I
vect.S43 = zeros(2,1);

% ref_C4 to D
vect.S46 = pos_init.D - pos_init.I;
% ref_C6 to D
vect.S64 = zeros(2,1);

% ref_C6 to E
vect.S62 = pos_init.E - pos_init.D;
% ref_C2 to E
vect.S26 = pos_init.E - pos_init.J;

% ref_C4 to A
vect.S41 = pos_init.A - pos_init.I;
% ref_C1 to A
vect.S14 = zeros(2,1);

% ref_C1 to B 
vect.S15 = pos_init.B - pos_init.A;
% ref_C5 to B
vect.S51 = zeros(2,1);

% ref_C5 to J 
vect.S52 = pos_init.J - pos_init.B;
% ref_C2 to J
vect.S25 = zeros(2,1);

% ref_C2 to M 
vect.S27 = pos_init.M - pos_init.J;
% ref_C7 to M
vect.S72 = zeros(2,1);

%%%%%%%%%%%%%%%%%%
%Translation joint vectors (Frames oriented and located along line of
%translation, therefore all zero)
vect.S87 = zeros(2,1);
vect.S78 = zeros(2,1);
vect.S109 = zeros(2,1);
vect.S910 = zeros(2,1);
%Perpendicular vectors for translation joint (orientation of local frame)
vect.W87 = [0;1];
vect.W109 = [0;1];
%Parallel vectors for translation joint (orientation of local frame)
vect.U87 = [1;0];
vect.U109 = [1;0];
%Vector along line of translation (orientation same as global frame)
vect.D87 = pos_init.M - pos_init.N;
vect.D109 = pos_init.G - pos_init.H;

end