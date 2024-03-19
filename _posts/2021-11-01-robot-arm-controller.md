<!-- ---
layout: post
title: "6-Degree-of-Freedom Manipulator Control"
categories:
  - University Projects
tags:
  - Robotics
  - Kinematics
  - Trajectory Planning
  - Matlab
last_modified_at: 2024-03-12
---
Goal: Create a software control system for a 6DOF arm with a spherical joint. The Robot must pick and place an object given commands through the computer.

Working with a group I took charge to complete all tasks within Matlab:
Forward Kinematics
Inverse Kinematics
Trajectory Planning
Graphical User Interface

The robot kinematics was modeled utilizing the Denavit-Hartenberg Method.
To determine the inverse kinematics, the decoupling method was used since the last 3 joints make a spherical wrist (the last 4 joints’ z-axes intersect).
When developing the inverse kinematics, the limits of motion of the robot’s joints were considered.

In matlab an interface was developed to show the representation of the robot with the inputs for the desired position and rate of motion.  -->