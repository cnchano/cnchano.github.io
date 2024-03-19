function Jacobian=JacobianCalc(q)


    % Proceadure that cooperates with the NewRaph is used to calculate the 
    % Jacobian matrix equations

    % Input:
    % q - absolute coordinates of multibody system

    % Output:
    % Jacobian - calculated Jacobian matrix


    %Input data
    [pos_init, CofM] = Init_config();
    vect = Local_Vector();
     
    % Assigning elements from vector q
    
    r0=[0;0];         
    r1 = q(1:2);      fi_1 = q(3); 
    r2 = q(4:5);      fi_2 = q(6);
    r3 = q(7:8);      fi_3 = q(9);
    r4 = q(10:11);    fi_4 = q(12);
    r5 = q(13:14);    fi_5 = q(15);
    r6 = q(16:17);    fi_6 = q(18);
    r7 = q(19:20);    fi_7 = q(21);
    r8 = q(22:23);    fi_8 = q(24);
    r9 = q(25:26);    fi_9 = q(27);
    r10 = q(28:29);   fi_10 = q(30);


    %calculate rotation matrices
    R_0  = eye(2);
    R_01 = Rot(fi_1); 
    R_02 = Rot(fi_2); 
    R_03 = Rot(fi_3); 
    R_04 = Rot(fi_4); 
    R_05 = Rot(fi_5); 
    R_06 = Rot(fi_6); 
    R_07 = Rot(fi_7); 
    R_08 = Rot(fi_8); 
    R_09 = Rot(fi_9); 
    R_010 = Rot(fi_10);


    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    %JACOBIAN
    Omega = [0, -1; 1, 0];

    Jacobian = zeros(30,30);

    %Constraint 0-3 
    Jacobian(1:2,7:8) = eye(2);
    % / q6
    Jacobian(1:2,9) = Omega*R_03*vect.S30;
    
    %Constraint 3-4 / q5
    Jacobian(3:4,7:8) = eye(2);
    %/q6
    Jacobian(3:4,9) = Omega*R_03*vect.S34;
    %/q7
    Jacobian(3:4,10:11) = -eye(2);
    %/q8
    Jacobian(3:4,12) = -Omega*R_04*vect.S43;
    
    %Constraint 4-1 / q1
    Jacobian(5:6,1:2) = -eye(2);
    %/q2
    Jacobian(5:6,3) = -Omega*R_01*vect.S14;
    %/q7
    Jacobian(5:6,10:11) = eye(2);
    %/q8
    Jacobian(5:6,12) = Omega*R_04*vect.S41;
    
    %Constraint 1-5 / q1
    Jacobian(7:8,1:2) = eye(2);
    %/q2
    Jacobian(7:8,3) = Omega*R_01*vect.S15;
    %/q9
    Jacobian(7:8,13:14) = -eye(2);
    %/q10
    Jacobian(7:8,15) = -Omega*R_05*vect.S51;
    
    
    %Constraint 5-2 / q3
    Jacobian(9:10,4:5) = -eye(2);
    %/q4
    Jacobian(9:10,6) = -Omega*R_02*vect.S25;
    %/q9
    Jacobian(9:10,13:14) = eye(2);
    %/q10
    Jacobian(9:10,15) = Omega*R_05*vect.S52;
    
    %Constraint 2-7 / q3
    Jacobian(11:12,4:5) = eye(2);
    %/q4
    Jacobian(11:12,6) = Omega*R_02*vect.S27;
    %/q13
    Jacobian(11:12,19:20) = -eye(2);
    %/q14
    Jacobian(11:12,21) = -Omega*R_07*vect.S72;
    
    %Constraint 2-3 / q3
    Jacobian(13:14,4:5) = eye(2);
    %/q4
    Jacobian(13:14,6) = Omega*R_02*vect.S23;
    %/q5
    Jacobian(13:14,7:8) = -eye(2);
    %/q6
    Jacobian(13:14,9) = -Omega*R_03*vect.S32;
    
    %Constraint 3-9 / q5
    Jacobian(15:16,7:8) = eye(2);
    %/q6
    Jacobian(15:16,9) = Omega*R_03*vect.S39;
    %/q17
    Jacobian(15:16,25:26) = -eye(2);
    %/q18
    Jacobian(15:16,27) = -Omega*R_09*vect.S93;
    
    %Constraint 4-6 / q7
    Jacobian(17:18,10:11) = eye(2);
    %/q8
    Jacobian(17:18,12) = Omega*R_04*vect.S46;
    %/q11
    Jacobian(17:18,16:17) = -eye(2);
    %/q12
    Jacobian(17:18,18) = -Omega*R_06*vect.S64;
    
    %Constraint 6-2 / q3
    Jacobian(19:20,4:5) = -eye(2);
    %/q4
    Jacobian(19:20,6) = -Omega*R_02*vect.S26;
    %/q11
    Jacobian(19:20,16:17) = eye(2);
    %/q12
    Jacobian(19:20,18) = Omega*R_06*vect.S62;
    
    %Constraint 0-8
    Jacobian(21:22,22:23) = eye(2);
    %/q16
    Jacobian(21:22,24) = Omega*R_08*vect.S80;
    
    %Constraint 0-10
    Jacobian(23:24,28:29) = eye(2);
    %/q20
    Jacobian(23:24,30) = Omega*R_010*vect.S100;
    
    %Constraint 8-7 Angle
    %/q14
    Jacobian(25,21) = -1;
    %/q16
    Jacobian(25,24) = 1;
    
    %Constraint 8-7 Displacement
    [dF_dr_i, dF_dphi_i, dF_dr_j, dF_dphi_j] = Jacobian_TransJ(r8, R_08, r7, R_07, vect.S87, vect.W87);
    %/q13
    Jacobian(26,19:20) = dF_dr_j;
    %/q14
    Jacobian(26,21) = dF_dphi_j;
    %/q15
    Jacobian(26,22:23) = dF_dr_i;
    %/q16
    Jacobian(26,24) = dF_dphi_i;
    
    %Constraint 10-9 Angle
    %/q18
    Jacobian(27,27) = -1;
    %/q20
    Jacobian(27,30) = 1;
    
    %Constraint 10-9 Displacement
    [dF_dr_i, dF_dphi_i, dF_dr_j, dF_dphi_j] = Jacobian_TransJ(r10, R_010, r9, R_09, vect.S109, vect.W109);
    %/q13
    Jacobian(28,25:26) = dF_dr_j;
    %/q14
    Jacobian(28,27) = dF_dphi_j;
    %/q15
    Jacobian(28,28:29) = dF_dr_i;
    %/q16
    Jacobian(28,30) = dF_dphi_i;
    
    
    % DRIVING CONSTRAINTS
    %Constraint 8-7 Displacement
    [dFt_dr_i, dFt_dphi_i, dFt_dr_j, dFt_dphi_j] = Jacobian_TransJ_Drive(r8, R_08, r7, R_07, vect.S87, vect.U87);
    %/q13
    Jacobian(29,19:20) = dFt_dr_j;
    %/q14
    Jacobian(29,21) = dFt_dphi_j;
    %/q15
    Jacobian(29,22:23) = dFt_dr_i;
    %/q16
    Jacobian(29,24) = dFt_dphi_i;
    
    %Constraint 10-9 Displacement
    [dFt_dr_i, dFt_dphi_i, dFt_dr_j, dFt_dphi_j] = Jacobian_TransJ_Drive(r10, R_010, r9, R_09, vect.S109, vect.U109);
    %/q13
    Jacobian(30,25:26) = dFt_dr_j;
    %/q14
    Jacobian(30,27) = dFt_dphi_j;
    %/q15
    Jacobian(30,28:29) = dFt_dr_i;
    %/q16
    Jacobian(30,30) = dFt_dphi_i;
    
    %det_J = det(Jacobian);
    %fprintf("Determinate of Jacobian")
    %disp(det_J)
    %////////////////////////////////////////

end