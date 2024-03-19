function [T,k]=mainCalc();
    %clear all
     %[T,Q,DQ,D2Q] = multibody()
    % Kinematic solution of position, speed and acceleration of the multibody system

    % Output:
    % T - Time vector
    % Q - Vector of solution for position problem
    % DQ - Vector of solution for velocity problem
    % D2Q - Vector of solution for acceleration problem

    %Input data
    [pos_init, CofM] = Init_config();
    vect = Local_Vector();
    
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    %FIND ALL ANGLES OF BODIES TO THEIR RESPECTIVE REFERENCE FRAMES

    fi_init = zeros(10,1);
    x_unit = [1;0];
    fi_init(10) = vectangle360(x_unit,vect.D109);
    fi_init(9) = vectangle360(x_unit,vect.D109);
    
    fi_init(8) = vectangle360(x_unit,vect.D87);
    fi_init(7) = vectangle360(x_unit,vect.D87);
    
   
    %////////////////////////////////////////////
    %Create initial q vector
    
    q_init = zeros(30,1);
    
    %q1
    q_init(1:2) = pos_init.A; %C1 / Position in global frame at start (t=0)
    %q2
    q_init(3) = fi_init(1,1);
    %q3
    q_init(4:5) = pos_init.J;%C2
    %q4
    q_init(6) = fi_init(2,1);
    %q5
    q_init(7:8) = pos_init.L;%C3
    %q6
    q_init(9) = fi_init(3);
    %q7
    q_init(10:11) = pos_init.I;%C4
    %q8
    q_init(12) = fi_init(4);
    %q9
    q_init(13:14) = pos_init.B;%C5
    %q10
    q_init(15) = fi_init(5);
    %q11
    q_init(16:17) = pos_init.D;%C6
    %q12
    q_init(18) = fi_init(6);
    %q13
    q_init(19:20) = pos_init.M;%C7
    %q14
    q_init(21) = fi_init(7);
    %q15
    q_init(22:23) = pos_init.N;%C8
    %q16
    q_init(24) = fi_init(8);
    %q17
    q_init(25:26) = pos_init.G;%C9
    %q18
    q_init(27) = fi_init(9);
    %q19
    q_init(28:29) = pos_init.H;%C10
    %q20
    q_init(30) = fi_init(10);
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    
    % First approximation (if no solution from the previous time)

    q=zeros(30,1); dq=zeros(30,1); d2q=zeros(30,1);
    counter=0;     % Counter solutions (numbering is used to the columns in the tables of results)
    dt=0.1;    % Interval between successive moments
    
    q = q_init;

    % Solving kinematics tasks in subsequent moments 't'

    for t=0:dt:5
       % Position problem

       % The initial approximation of the solution from the previous time 
       % plus components resulting from the calculated speed and acceleration

       q0 = q + dq * dt + .5 * d2q * dt^2;
      
       
       q = NewtonRaphsonCalc(q0,t);

       dq = velocityCalc(q,t);          % Velocity problem

       d2q = accelerationCalc(dq,q,t);  % Acceleration problem

       % The task of writing the arrays that collect results
       counter = counter + 1;
       T(1,counter) = t;
       Q(:,counter) = q;
       DQ(:,counter) = dq;
       D2Q(:,counter) = d2q;
    end 
    k=[ Q DQ D2Q];% 
    fprintf('%d',Q)
