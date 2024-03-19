clear all;
[t,k]=mainCalc();
Q=k(1:30,1:51);                  
DQ=k(1:30,52:102);              
D2Q=k(1:30,103:153);             
size(Q);
BODY=2; % Select the local frame of interest
 i=BODY-1;
 %% Extract Position 
Px=Q(3*i+1,1:51);                 
Py=Q(3*i+2,1:51);               
PHIp=Q(3*i+3,1:51);%angular         
    %% Extract Velocity
Vx=DQ(3*i+1,1:51);               
Vy=DQ(3*i+2,1:51);              
PHIv=DQ(3*i+3,1:51);            
    %% Extract Acceleration
Ax=D2Q(3*i+1,1:51);             
Ay=D2Q(3*i+2,1:51);             
PHIa=D2Q(3*i+3,1:51);           
    %%  plot the Position,Velecity,Acceleration of the selected body
    
     plot(t,Vx)
     figure(1)

     subplot(3,1,1)
     plot(t,Px,'color','r')
     xlabel('t [sec]') 
     ylabel('Translation [meters]') 
     title('Position_X')

     subplot(3,1,2)
     plot(t,Vx,'color','b')
     xlabel('t [sec]') 
     ylabel('Translational Velocity [m/sec]')
     title('Velocity_X')

     subplot(3,1,3)
     plot(t,Ax,'color','g')
     xlabel('t [sec]') 
     ylabel('Translational Acceleration [m/sec^2]')
     title('Acceleration_X')
     figure(2)

     subplot(3,1,1)
     plot(t,Py,'color','k')
     xlabel('t [sec]') 
     ylabel('Translation [meters]') 
     title('Position_Y')

     subplot(3,1,2)
     plot(t,Vy,'color','m')
     xlabel('t [sec]') 
     ylabel('Translational Velocity [m/sec]')
     title('Velocity_Y')

     subplot(3,1,3)
     plot(t,Ay,'color','r')
     xlabel('t [sec]') 
     ylabel('Translational Acceleration [m/sec^2]')
     title('Acceleration_Y')








