---
layout: post
title: "UAV Decentralized Formation Flying For Surveying Missions, Using Behavioral Techniques"
categories:
  - University Projects
tags:
  - Aerospace
  - Master Thesis
  - Unmanned Aerial Vehicle (UAV)
  - Nonlinear System Modeling
  - Quadrotor Modeling
  - Control System
  - Decentralized Control
  - Decentralized Multi-Agent Cooperation
  - Formation Flying
  - ROS2
  - Gazebo Simulation
  - Photogrammetry
last_modified_at: 2024-03-12
---
<h3>Summary:</h3>
<p>
This thesis explores the application of multi-agent cooperation in the context of Unmanned
Aerial Vehicles (UAV (Unmanned Aerial Vehicle)s), with a focus on emergency response
scenarios. It discusses the use of UAV formations for various applications, emphasizing
their potential in hazardous environments and large-scale surveys. This thesis discusses
different cooperation architectures and decision-making structures, highlighting architectures
for decentralized formation maintenance.
</p>
<p>
A specific mission scenario involving earthquake response is presented, detailing the
use of the DJI Matrice 300RTK as the UAV and photogrammetry with DJI P1 cameras. The
functional procedure for deploying a UAV swarm in emergency scenarios is outlined.
</p>
<p>
The thesis outlines the development of a control scheme based on a nonlinear dynamic
model, feedback linearization, and PID controllers. Various behaviors are designed to enable
single UAVs to integrate into assigned formations and execute survey missions. The use of
ROS2 and Gazebo simulator for real-time simulation is discussed.
</p>
<p>
In conclusion, this work contributes to the development of flexible UAV swarms for emergency
response, focusing on decentralized formation flying and survey missions. The study
discusses limitations, capabilities, and potential future enhancements.
</p>

<iframe src="https://onedrive.live.com/embed?resid=8706B55282A10F7F%213401&amp;authkey=!ALWlaZwmff2xkEs&amp;em=2&amp;wdAr=1.7777777777777777" width="100%" height="367px" frameborder="0">This is an embedded <a target="_blank" href="https://office.com">Microsoft Office</a> presentation, powered by <a target="_blank" href="https://office.com/webapps">Office</a>.</iframe>
<div class="message">
    <font size="-1">*Open powerpoint in new window for better viewing with the transcript notes.</font>
</div>
<h3>Presentation Transcript</h3>

<div style="width:100%;height:200px;border:1px solid #ccc;overflow:auto;padding:5px;">

    <h4>Slide 3</h4>
    <p>
        UAV’s have proven their utility in many scenarios, such as in surveillance, inspection, and mapping. 
    </p>
    <p>
        In this thesis, the focus is to take advantage of having a team of UAVs to perform emergency surveying missions working as part of a larger multi-agent emergency response. The reason being, by having a formation, more data can be collected at one time versus a single UAV.
    </p>
    <p>
        Now, when considering formation maintenance architectures, various works employ one of the general formation maintenance structures. 
    </p>
    <p>
        In the leader follower method, seen in FIGURE 3A, all the information is handled by the leader, with the followers simply following the leader. 
        This structure allows for low-cost follower agents but introduces a single point of failure with the leader. 
    </p>
    <p>
        Now looking at FIGURE 3C, the Virtual Leader and Virtual Center formation method functions by following the trajectory determined for the virtual center or virtual leader. Each agent possesses their own estimation of the location of the virtual center/leader, and follows along in formation accordingly. This eliminates the single point of failure as in the Leader-Follower approach in FIGURE 3A. 
    </p>
    <p>
        In the behavioral formation method, shown in FIGURE 3B, each respective agent makes use of discrete behaviors to result in an emergent desired behavior for a situation. 
        This method was made notable in papers such as in Reynolds 1987 simulating flocking behavior with the behaviors of collision avoidance, velocity matching, and flock centering. 
        Other works take the same behavior approach and apply it to stricter formation patterns, such as in Balch 1998, where a formation of military HUMVs go through an obstacle course using different formation patterns and compared different strategies for referencing the formation. 
    </p>
    <p>
        This general categorization may be not sufficient to distinguish best use cases of each method since there is plenty of overlap between them. 
        But for this thesis, the behavioral approach is utilized since adjustments to the behaviors can be handled discretely, and it provides a simple architecture. 
    </p>
    <h4>Slide 4</h4>
    <p>
        Now getting into the mission scenario where the swarm of UAVs will be deployed.
    </p>
    <p>
        The scenario starts with a major earthquake occurring in the greater Los Angeles area, pictured on the slide. 
        First responders need to develop situational awareness of important areas by developing a 3d map through photogrammetry to aid in emergency response.
    </p>
    <p>
        UAV are set up in an open area as a temporary base of operations. 
    </p>
    <p>
        The mission criteria is passed to the UAV during set up, then the swarm takes-off, and gets into dense formation once reaching altitude. 
    </p>
    <p>
        Next the swarm gets to the starting point of the surveying mission, changing into row formation, and proceeds to take images of the area(s) of interest. 
    </p>
    <p>
        Once the surveying is complete the swarm changes back to dense formation and returns to the home base.
    </p>
    <h4>Slide 5</h4>
    <p>
        For this thesis we look at photogrammetry since its use is common for surveying and it is possible to attain 3D models with photo visual accuracy. 
        Additionally, the equipment cost could be reduced with equipment selection.
    </p>
    <p>
        Getting into the details of mapping through photogrammetry, there are some requirements for consideration with the UAV formation.
    </p>
    <p>
        To attain the images, it is common for single UAV to take the flight path as shown in FIGURE 5A, ensuring images taken overlap.As shown in FIGURE 5B, it is important to maintain a minimum front and side overlap of 70% to accurately create a 3D representation.
    </p>
    <p>
        Additional aspects to consider when capturing images are flight speed, flight altitude, camera angle and camera size. 
        High flight speeds at low altitudes can introduce motion blur, while high altitudes can lose details depending on the camera. 
        Additionally, to capture tall features, camera angle must be introduced otherwise occluded areas appear in the 3D representation as shown in FIGURE 5C.
    </p>
    <p>
        For scenarios where time is not critical, these problems are not as apparent since an area can be re-surveyed to gather more images.
    </p>
    <h4>Slide 6</h4>
    <p>
        For this thesis, the model is based on the M300RTK by DJI shown in FIGURE 6A.
    </p>
    <p>
        It was selected due to its commercial use and capability as a quadrotor for surveying and inspection.
    </p>
    <p>
        A space model was provided, as shown in FIGURE 6B, and by applying property values, inertial data could be determined.
    </p>
    <p>
        As for powertrain data, since the drone lacked this information, a similarly spec’ed powertrain system by DJI was substituted, which provided the powertrain performance curves shown in FIGURE 6C.
    </p>
    <p>
        Taking the data from the referenced quadrotor and powertrain systems, a typical quadrotor model is developed shown in FIGURE 6D. 
    </p>
   <h4>Slide 7</h4>
    <p>
        And so we get the resulting state space model, shown in EQ 7a, representing the non-linearly modeled system for control.    
    </p>
    <p>
        We make use of feedback linearization for control of this system, using state representations 2,4,6, and 8; which model angular acceleration of roll, pitch and yaw, and linear acceleration along the Z axis. <br>
    </p>
   <h4>Slide 8</h4>
    <p>
        Here we have the quadrotor control diagram. 
    </p>
    <p>
        For each UAV, a single controller is represented as such: <br>
        The behavioral controller works as a layer of abstraction, providing the quadrotor with linear velocity commands and the yaw position. 
    </p>
    <p>
        Next the Position Controller takes the linear velocities, and outputs the reference roll and pitch angles. 
        Additionally, the position controller determines the altitude control command to the UAV. 
    </p>
    <p>
        Then, the attitude controller takes the roll, pitch and yaw reference positions and determines the control commands U2 to U4 to the UAV. 
    </p>
    <p>
        Finally, these motor commands are converted to forces and torques to be applied to the model in gazebo simulator. 
    </p>
    <p>
        From the sensors in the Gazebo simulator, the current state of the UAV is passed back to the controllers for reference. <br>
    </p>
   <h4>Slide 9</h4>
    <p>
        Now moving up a level of abstraction, we look at the communication network implemented.
    </p>
    <p>
        With multi-agent cooperation, communication is crucial.
    </p>
    <p>
        For this thesis, with the idea of teams of UAV completing tasks, a designated UAV would be assigned as a gate node, provided they have the proper equipment for long range communication. 
    </p>
    <p>
        This UAV functioning as the Gate Node would receive communications from the ground control, then it would publish the data to the rest of the swarm.
    </p>
    <p>
        Within the swarm, communication is done through a simple flooding algorithm. 
        Each UAV possesses data on the position and velocity of all other UAV in the swarm, and this information is propagated through the swarm. 
    </p>
    <h4>Slide 10</h4>
    <p>
        Now, looking at the behavioral controller, to understand the interaction of how all the behaviors interact, we look at EQUATIONS 10A and B.
    </p>
    <p>
        Starting with EQUATION 10A, the velocity vector commands are added up, with the magnitudes of each behavior in the left horizontal matrix and the unit vector direction for each respective behavior in the right vertical matrix. 
    </p>
    <p>
        Taking this vector sum from EQUATION 10A, the vector is normalized and rescaled by the constants setting the maximum allowable velocity in EQUATION 10B.
    </p>
    <h4>Slide 11</h4>
    <p>
        Now getting into the individual behaviors, we start off with the altitude behavior.
    </p>
    <p>
        The vector direction is towards the goal altitude and the magnitude is dictated by the cases shown in EQUATION 11A. 
    </p>
    <p>
        Following the cases, bottom to top, we start from a distance outside the maximum boundary, so the UAV is commanded to go at 100% of the designated weight value set. 
    </p>
    <p>
        Then, from the maximum boundary, the commanded velocity magnitude is linearly decreasing until reaching the minimum boundary. 
    </p>
    <p>
        Once within the minimum boundary, the commanded velocity magnitude is se to zero. 
    </p>
    <p>
        The minimum boundary ensures a small region for providing stability in maintaining altitude. Otherwise, oscillations about the goal altitude would be exhibited.
    </p>
    <h4>Slide 12</h4>
    <p>
        Now getting into the goal seeking behavior, the application is similar as the altitude maintenance, albeit on the inertial X-Y plane.
    </p>
    <p>
        The vector direction is towards the goal position in the inertial XY-plane, with the goal position being a formation node with the formation center at the goal position as shown in FIGURE 12A.
    </p>
    <p>
        The cases shown in EQUATION 12A of this behavior are similar to the altitude behavior, with the only differences being a lack of a minimum boundary and there is a case for collision avoidance, where the goal-seeking behavior is minimized when near neighboring UAV.
    </p>
    <h4>Slide 13</h4>
    <p>
        For maintaining formation, it is necessary to have the assigned positions in the formation, the location and the orientation of the formation.
    </p>
    <p>
        Each UAV possesses the same information regarding the mission and formation independently of each other. 
        Data regarding positions of other UAVs is constantly updated asynchronously. 
    </p>
    <p>
        For determining the assigned positions within the formation, each UAV develops a distance cost table to the formation nodes, as seen in FIGURE 13A, using the Python SciPy optimization library.
    </p>
    <p>
        For the formation maintenance behavior shown in FIGURE 13B, the formation center is imposed on the swarm center (FC), which is determined independently by each UAV.
        Orientation of the formation is towards the next waypoint based on the current swarm center position. 
    </p>
    <p>
        Getting back to the formation maintenance behavior, the behavior functions similar to the goal-seeking behavior as shown in EQUATION 13a.
    </p>
    <h4>Slide 14</h4>
    <p>
        The collision avoidance behavior is quite different in function compared to the other behaviors.
    </p>
    <p>
        Instead of using UAV to UAV distance multiplied by the weight to determine the collision avoidance velocity magnitude, the time to collision is used. 
        The weight is set to be the ideal distance the UAV should move to avoid collision.
    </p>
    <p>
        The collision avoidance behavior is set to remain inactive until within maximum boundary, where in this thesis was set to 75% of the formation spacing. 
        Once active, the algorithm determines if the UAV are on collision course with each other. 
    </p>
    <p>
        If a potential collision is determined, and the time to collision is below the maximum time to collision, the behavior velocity magnitude is calculated as shown in the last case of EQUATION 14A. 
    </p>
    <p>
        If at any point the UAV enters the minimum boundary of another UAV, then the goal-seeking behavior and formation maintenance behavior are set to a minimum value. 
        This prioritizes collision avoidance but still nudges the UAV into the formation position slowly.
    </p>
    <p>
        Now regarding the vector direction, as denoted by “r_jk” in FIGURE 14A,  it is the normalized distance vector sum as represented in “V_c-avoid”.
    </p>
    <p>
        With that, we move onto the simulation studies…

    </p>
    <h4>Slide 15</h4>
    <p>
        To analyze the swarm, simulations were ran where the swarm moves along a 40x40m square pattern, changing formations every 20 meters as shown in FIGURE 15A. 
        And the formation spacing was set to the minimum amount for expected operation (8 meters).
    </p>
    <p>
        (PLAY VIDEO)
    </p>
    <p>
        This task tested the ability of the UAV to:
        <br>
            <ol type="1">
            <li>Get in and out of tight formations</li>
            <li>Avoid collision during reformation</li>
            <li>Maintain formation</li>
            </ol>
        Here we have a top-down view of this reformation test. (DESCRIBE VIDEO)
    </p>
    <h4>Slide 16</h4>
    <p>
        Now, investigating the effect of independently calculating the swarm center by each UAV during the reformation test as shown in FIGURE 16A, we expect to see some error in the true swarm average location versus what each respective UAV determines as the swarm average location.
    </p>
    <p>
        Looking at FIGURE 16A, we see the formation moving along the X-axis, then it changes formation, and finally proceeds to move along the Y-axis. 
        Looking at FIGURES 16B and 16C, we have the calculated position error in the X and Y axes respectively of Drone 3; Which is the grey line in FIGURE 16A.
    </p>
    <p>
        In FIGURE 16B, we have position error along the X-axis. 
        Following the graph on FIGURE 16B with FIGURE 16A, an error of nearly 0.25 meters is shown initially due to reformation from row formation to circle formation. 
        As the formation slowly moves towards the waypoint, the error remains below 0.1 meters. 
    </p>
    <p>
        Again, reformation takes place and then the formation settles.
        Since motion is along the Y-axis, the error along the X-axis is nearly zero. 
        Comparing Figures 16B and 16C, we see the errors are similar based on the direction of motion of the formation.
    </p>
    <p>
        Knowing that position error is near zero in the direction the formation isn’t moving along and a maximum of 0.2 meters along the direction of motion after reformation, the overlap between images taken during surveying can easily compensate for this error.
    </p>
    <h4>Slide 17</h4>
    <p>
        Next, we look at collision avoidance.
    </p>
    <p>
        In the scenario shown in FIGURE 17A, based on formation assignment, Drone 3 needs to overtake Drone 2 to get into single-file formation, which causes the collision avoidance behavior to activate.
    </p>
    <p>
        Looking at the green dashed lines representing the collision avoidance behavior magnitude in Figures 17B for Drone 2 and Figure 17C for Drone 3, we see the successful effect of the behaviors to the flight paths taken by the UAV in FIGURE 17A. 
    </p>
    <p>
        The only downside being that the UAV are not more reactive at close collision distances.
    </p>
    <h4>Slide 18</h4>
    <p>
        Since the use case of the swarm is for emergency response, failure of a single drone is considered while maintaining communication.
    </p>
    <p>
        Two scenarios are considered:
    </p>
    <p>
        Simulation 1, as shown in FIGURE 18B, considers total motor failure of Drone 1,  35 seconds into the simulation. 
        After failure of Drone 1, the other UAV attempt to maintain formation but oscillate about a single position due to the goal-seeking behavior.
    </p>
    <p>
        Simulation 2, as shown in FIGURE 18A, considers partial motor failure of Drone 1,  35 seconds into the simulation.
        The affect is Drone 1 drifts away from the expected flight path and while the other two UAV attempt to reach the goal, they still slowly follow along fighting between the goal seeking and formation maintenance behaviors.
    </p>
    <p>
        The solution for total failure could be a simple re-organizing of the swarm group based on the altitude of the failed UAV. 
        But a solution for partial failure, such as drifting away from the expected flight path is not so straight forward.

    </p>
    <h4>Slide 19</h4>
    <p>
        Finally, we get to the mission scenario initially proposed.
    </p>
    <p>
        The UAV is set to survey a 250 x 250 meter area, maintaining a 70% overlap between each row. 
    </p>
    <p>
        We compare the time taken to accomplish the mission between a single UAV versus a formation of three UAV, as shown in the FIGURES and TABLE.
    </p>
    <p>
        The expectation is to reduce the time of the mission by nearly 2/3, but comparing the first two simulations there is a 51% difference. 
    </p>
    <p>
        After taking the time to reach the area to be surveyed, the time still deviates from expectations.
    </p>
    <p>
        This result is expected from what we see during formation flight , since there is essentially a catch-up mechanism built into a swarm center referenced formation.
    </p>
    <h4>Slide 20</h4>
    <p>
        Read Conclusions.
    </p>
</div> 
<br>



{%- assign ms-thesis-pdf = "/assets/warsaw_uni/cnchano___Master_Thesis.pdf" -%}
<embed src="{{- ms-thesis-pdf | relative_url -}}" alt="M.S. Thesis PDF" class="ms-thesis-pdf" style="width:816px;height:1056px">
<div class="ms-thesis-pdf"></div> 

