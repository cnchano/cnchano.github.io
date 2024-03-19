---
layout: post
title: "Suspension Validation using Strain Gages"
categories:
  - University Projects
tags:
  - Automotive
  - Baja SAE
  - Test Validation
  - Strain Gages
  - Stress Analysis
last_modified_at: 2024-03-12
---
{%- assign baja_2016_car_image = "/assets/baja_sae/2016/2016_baja_vehicle.jpg" -%}
<div>
  <img src="{{- baja_2016_car_image | relative_url -}}" alt="Image of strain gages mounted to suspension arms with FEA." style="width:50%; float: right; 
  margin: 0px 0px 0px 20px; border: 1px solid #555;">
</div>
<p>
Validation is a necessary step in any engineering design cycle and it is what each Baja team is judged on during design presentations. Strain gages were needed to validate suspension loads from the wheel in various off-road scenarios. By conducting tests that closely resemble conditions experienced during our competitions, we are able to confirm that our assumptions for expected loads are close to what we actually encounter. Points of interest for adhering strain gages to the suspension components were selected based on Finite
Element Analysis. With resultant suspension loading data, the suspension components can be iterated upon for the following design years. 
</p>
<p>
To properly implement strain gage measurements for the tests of interest, several considerations were made on the strain gages selected, components used in the amplifier/Wheatstone bridge design, and power supply.
</p>
<p>
Strain Gage Selection Considerations:
<br>
    <ul>
    <li> Suspension Tube diameter </li>
    <li> Material coefficient of expansion </li>
    <li> Heat sink capability of material </li>
    <li> Heat generation of strain gage </li>
    <li> Strain gage cost </li>
    </ul> 
</p>
<p>
  The strain gage size was based on sizing it to a 10th of the tube diameter to reduce errors from a planar surface approximation in calculations. 
</p>
<p>
  In our scenario, the pre-wired 350 ohm stacked rosette
  (C2A-06-062WW-350) provided a solution to recording
  stresses of our lower A-arms and trailing arm, as the tubular
  geometry of these critical members introduced errors when assuming a planar surface for stress-strain relations. Using a higher resistance of 350 ohm allowed for greater excitation without introducing greater errors due to temperature.
</p>
<p>
  For the upper A-arm and upright, the 120 ohm rosette (CEA-06-120CZ-120) were sufficient for measurement along the flat faces of the surface. Lastly, all the suspension links were best measured by the 120 ohm linear gages (CEA-06-240UZ-120) as they only experienced tension and compression.
</p>

{%- assign sg_susp_image = "/assets/baja_sae/2016/sg_mounted_with_fea.jpg" -%}
<div>
  <img src="{{- sg_susp_image | relative_url -}}" alt="Image of strain gages mounted to suspension arms with FEA." style="width:100%; border: 1px solid #555;">
</div>

<p>
Signal Conditioning Considerations:
<br>
    <ul>
    <li> Data logger requires a 0-5Vdc signal, supplies 5Vdc regulated and 12Vdc (battery power supply). </li>
    <li> Maximizing strain gage reading resolution to data logger. </li>
    <li> Cost of components must be kept minimal. </li>
    </ul> 
</p>
<p>
The amplifier design had three settable gains that correlated to a ratio of yielding stress for chromoly (4130) to improve measurement resolution. Since the amplifier did not automatically rescale, it was necessary to check the data to see if changing the amplifier gain was necessary. Another design implementation was the use of trimmers for zeroing the Wheatstone bridge before beginning testing. 
</p>

{%- assign trail_arm_strain_data_hi = "/assets/baja_sae/2016/trailing-arm_strain_high-gain.jpg" -%}
<div>
  <img src="{{- trail_arm_strain_data_hi | relative_url -}}" alt="Graphed data displaying strain data of each strain gage versus time." style="width:100%; border: 1px solid #555;">
</div>

{%- assign trail_arm_stress_data = "/assets/baja_sae/2016/trailing-arm_stresses.jpg" -%}
<div>
  <img src="{{- trail_arm_stress_data | relative_url -}}" alt="Graphed data displaying stresses and suspension travel versus time." style="width:50%; float: left; 
margin: 10px 20px 10px 0px; border: 1px solid #555;">
</div>

<p>
The test conducted simulated obstacles we would encounter, such as a rock garden, steep incline,
cornering, hard braking (all wheels locked), and bumps. A linear potentiometer was placed in
conjunction with the strain gages as to find the reaction forces from the air shocks.
</p>

<p>
Strain gages validated that the true loading conditions were within 2% error of simulated loading conditions, done through FEA. This proves that our factor of safety values are valid assumptions and that our car is capable of handling said loading conditions.
</p>
<br>
<div class="message">
  <h4>Acknowledgements:</h4>
  <p>
    This project was only possible due to the sponsorship of strain gages and the knowledge shared by Jim Johnson from Micro-Measurements.  
    <a href="https://docs.micro-measurements.com/?id=9749&_ga=2.114983951.908510817.1709743955-1238174939.1709743955" target="_blank">This project was published as a case study for Micro-Measurements.</a> 
  </p>
  <p>
  Solid models and FEA were provided by the Suspension Lead, 
  <a href="https://www.linkedin.com/in/quintonquintana/" target="_blank">Quinton Quintana.</a>
  </p>
<div>