function F_Constraint = constraintCalc(q,t)

    % F = constrains(q,t)
    % Procedure that cooperates with the NewRaph is used to calculate the 
    % value of the function describing the constraints

    % Input:
    % q - absolute coordinates of multibody system
    % t - current time

    % Output:
    % F - Funtion Values

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



    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    %Create all the function constraints into an array
    %Init_config = [A = 1, B = 2, D = 3, E = 4, F = 5, G = 6, H = 7, I = 8, J = 9, K = 10 , L = 11 , M = 12, N = 13]
    F_Constraint = zeros(30,1);
    %Kin Constraint 0-3 L
    F_Constraint(1:2) = Constraint_RevKin(r3, R_03, vect.S30, r0, R_0, vect.S03 );
    %Kin Constraint 3-4 I
    F_Constraint(3:4) = Constraint_RevKin(r3, R_03, vect.S34, r4, R_04, vect.S43);
    %Kin Constraint 4-1 A
    F_Constraint(5:6) = Constraint_RevKin(r4, R_04, vect.S41, r1, R_01, vect.S14);
    %Kin Constraint 1-5 B
    F_Constraint(7:8) = Constraint_RevKin(r1, R_01, vect.S15, r5, R_05, vect.S51);
    %Kin Constraint 5-2 J
    F_Constraint(9:10) = Constraint_RevKin(r5, R_05, vect.S52, r2, R_02, vect.S25);
    %Kin Constraint 2-7 M
    F_Constraint(11:12) = Constraint_RevKin(r2, R_02, vect.S27, r7, R_07, vect.S72);
    %Kin Constraint 2-3 F
    F_Constraint(13:14) = Constraint_RevKin(r2, R_02, vect.S23, r3, R_03, vect.S32);
    %Kin Constraint 3-9 G
    F_Constraint(15:16) = Constraint_RevKin(r3, R_03, vect.S39, r9, R_09, vect.S93);
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    %Kin Constraint 4-6 D
    F_Constraint(17:18) = Constraint_RevKin(r4, R_04, vect.S46, r6, R_06, vect.S64);
    %Kin Constraint 6-2 E
    F_Constraint(19:20) = Constraint_RevKin(r6, R_06, vect.S62, r2, R_02, vect.S26);
    %Kin Constraint 0-8 N
    F_Constraint(21:22) = Constraint_RevKin( r8, R_08, vect.S80, r0, R_0, vect.S08);
    %Kin Constraint 0-10 H
    F_Constraint(23:24) = Constraint_RevKin(r10, R_010, vect.S100, r0, R_0, vect.S010);
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    %Eqn 5.21
    %Kin Linear Constraint 8-7 
    F_Constraint(25) = 0;%fi_7-fi_8;
    F_Constraint(26) = Constraint_TransKin(r8, R_08, vect.S87, r7, R_07, vect.S78, vect.W87);
    %Kin Linear Constraint 10-9
    F_Constraint(27) = 0;%fi_9-fi_10;
    F_Constraint(28) = Constraint_TransKin(r10, R_010, vect.S109, r9, R_09, vect.S910, vect.W109);
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    %DRIVING CONSTRAINTS
    L_87 = sqrt((pos_init.N(1,1) - pos_init.M(1,1))^2 + (pos_init.N(2,1) - pos_init.M(2,1))^2);
    L_109 = sqrt((pos_init.H(1,1) - pos_init.G(1,1))^2 + (pos_init.H(2,1) - pos_init.G(2,1))^2);
    Motion_87 =  L_87 + 0.05*sin(1.5*t);
    Motion_109 = L_109 + 0.05*sin(1.5*t);
    %Driving Linear Constraint 8-7
    F_Constraint(29) = Constraint_TransDrive(r8, R_08, vect.S87, r7, R_07, vect.S78, vect.U87, Motion_87);
    %Driving Linear Constraint 10-9
    F_Constraint(30) = Constraint_TransDrive(r10, R_010, vect.S109, r9, R_09, vect.S910, vect.U109, Motion_109);
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    

  end