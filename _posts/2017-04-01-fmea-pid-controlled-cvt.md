---
layout: post
title: "Failure Analysis of the PID Controlled Continuously Variable Transmission"
categories:
  - University Projects
tags:
  - Automotive
  - Baja SAE
  - Failure Analysis
  - Powertrain Design
last_modified_at: 2024-03-12
---
<div class="message" style="margin:20px">
<p>
Baja SAE is a collegiate design series sponsored by the Society of Automotive Engineers. Every year teams from across the globe design and manufacture one person off-road vehicles and compete in three competitions held across the United States. These four day competitions consist of Static and Dynamic events. The static events consist of a design presentation and sales presentation. The dynamic events are acceleration, suspension and traction, maneuverability and either sled pull or hill climb. Each competition ends with a four-hour endurance race where all student teams are pitted against each other on a track of one mile or greater. The dynamic events test each car's performance as well as its durability. 
</p>

<p>
With the implementation of a new CVT system, it was important to highlight avoidable failure modes by redesigning to prevent the failure, allow ease of maintenance, and/or increasing detectability of a failure mode. Fault Tree (FTA) and Failure Modes and Effects Analysis (FMEA) was used to highlight failure modes of the mechanical system, electrical system, and controller. The Arduino microcontroller and the Can Bus shield were considered as a black box and not analyzed.
</p>
<p>
When developing the FTA, loss of power transmission from the engine was the main failure considered. The FTA was used as a qualitative approach to understand the effects of a single failure mode. Using the information developed from the FTA, an FMEA was constructed to determine failures of greatest concern in a quantitative manner. To do the FMEA, a rating system was developed to calculate a Risk Priority Number (RPN) where the risk to driver safety was of greatest concern. The severity maximum was set to be seizing of the actuator, maintaining power transmission and posing life threatening danger. Occurrence was based on the time spent in between servicing the vehicle at the competition. The detection scale was based on how noticeable a problem was while driving the endurance race (a 4-hour race), then how noticeable a problem is when servicing the vehicle. Results from the FMEA revealed key failures are those that effect electric power supply, engine RPM reading (hall effect), failure of actuator from overheating, thrust bearing failure from lack of lubricant, and V-belt shearing.
</p>
<p>
Power supply problems were addressed by measuring power consumption in tests representative of the scenarios seen in a competition. Driver indication of low battery voltage to the driver was another solution for increasing detectability. Hall effect failures were addressed by moving the sensor outside of the CVT case to provide a cooler area. V-belt replacement was made to be a simpler process than the prototype by ensuring the clutch fork actuated the sheave next to the engine instead of the outer sheave. 
</p>
<p>
Actuator overheating was prevented by ensuring a properly sized motor was used, but at the 2017 Illinois competition (3rd competition), it failed from high temperatures in the engine bay. Since the engine bay was concealed with carbon fiber panels, temperatures were much higher than the ambient temperature. Considering the failure only took place after 25+ hours of testing and two competitions, it is highly possible that system wear had an effect.
</p>
<p>
During testing of the driving pulley with a thrust bearing, the component failed due to forces applied outside the axis of rotation. A re-design became necessary where a ball bearing was used as it was done in the prototype. 
</p>
<p>
CVT case cooling was implemented to prevent belt vulcanization, but failed in the 2017 Kansas competition due to the high temperatures coming from the engine resulting in increased power draw and battery failure.
</p>
<p>
Despite the design changes introduced and hours of testing, unpredicted failures resulted.
</p>