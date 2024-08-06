---
layout: post
title: "Strain Gage Amplifier Design and Development"
categories:
  - University Projects
tags:
  - Electronics Prototyping
  - Strain Gages
  - PCB Design
  - Sensor Calibration
  - Amplifier Design
  - Wheatstone Bridge Design
last_modified_at: 2024-03-12
---

{%- assign amps_mounted = "/assets/baja_sae/2016/sg_amps_mounted.png" -%}
<div>
  <figure style="width:50%; float: right;margin: 10px 0px 10px 10px;">
    <img src="{{- amps_mounted | relative_url -}}" alt="Image of strain gage signal conditioning boards mounted into waterproof enclosure." style=" border: 1px solid #555;">
    <figcaption style="font-size: smaller; color: grey; font-style: italic;">Figure 1: Image of strain gage signal conditioning boards mounted into waterproof enclosure.</figcaption>
  </figure>
</div>


<p>
Validation is a necessary step in any engineering design cycle and it is what each Baja team is judged on during design presentations. Strain gages were needed to validate suspension loads from the wheel in various off-road scenarios. 
</p>

<p>
In order to collect strain data from various points of interest on the suspension, I designed signal conditioning circuits to properly amplify the strain gage measurements while allowing for adjustability in amplifier gain setting and wheatstone measurement offset bias. A PCB was developed for the final product of this system, all enclosed in a weather proof case for testing in various off-road scenarios. The sensors would integrate with the DAQ system we already possessed.
</p>

{%- assign amps_doc = "/assets/baja_sae/2016/SG_AMP-BRIDGE_REV2.JPG" -%}
<div>
  <figure>
    <img src="{{- amps_doc | relative_url -}}" alt="Image of strain gage signal conditioning boards drawing." style="width:100%; margin: 20px 0px 0px 0px; border: 1px solid #555;">
    <figcaption style="font-size: smaller; color: grey; font-style: italic;">FIGURE 2: Drawing of strain gage signal conditioning circuits.</figcaption>
  </figure>
</div>

<p>
Design Considerations:
<br>
    <ul>
    <li> Strain Gage Wheatstone Setup </li>
    <li> Readable Voltage Range of DAQ </li>
    <li> Source Voltage</li>
    <li> Expected Ranges of Measurement</li>
    <li> Bias Error in the Wheatstone Bridge </li>
    <li> Temperature effects on Wheatstone Bridge </li>
    <li> Component Cost </li>
    </ul> 
</p>
<p>
  Thanks to all the available technical documentation, it was easy to determine critical design considerations and what solutions to use.
</p>
<p>
  Due to the setup of our measurement locations and limited strain gages, I decided on quarter bridge setups for all the amplifier circuits. To reduce measurement error in the wheatstone bridge, the following was done:
  <br>
    <ul>
    <li> Procured resistors with low coefficients of temperature deviation and small tolerances.</li>
    <li> Added a seperate wire carrying the measurement voltage from the strain gage to halve the wire resistance. </li>
    <li>Shunt resistors to remove initial measurement bias due to environmental conditions on the strain gage.</li>
    <li>The DAQ's power was passed through a Low Dropout Voltage Reference (REF192) to reduce temperature effects from current and stabilize the reference voltage for the wheatstone bridge.</li>
    </ul> 
</p>
<p>
Determining the right amplifier came down to the ranges of strain we could expect to see for the material used on the vehicle and maximizing it to the input rails of the DAQ. The amplifier design had three settable gains that correlated to a ratio of the full elastic range (33%, 50%, 100%) for chromoly (4130) to improve measurement resolution. Since the amplifier did not automatically rescale, it was necessary to check the data to see if changing the amplifier gain was necessary.
</p>

{%- assign amps_ina326 = "/assets/baja_sae/2016/INA326_op-amp_setup.PNG" -%}
<div>
  <figure>
    <img src="{{- amps_ina326 | relative_url -}}" alt="INA326 amplifier drawing setup for use with wheatstone bridge." style="width:100%; 
    margin: 0px 0px 0px 0px;">
    <figcaption style="font-size: smaller; color: grey; font-style: italic;">FIGURE 3: INA326 amplifier drawing setup for use with wheatstone bridge.</figcaption>
  </figure>

</div>

{%- assign amps_prototype = "/assets/baja_sae/2016/sg_amp_prototype.jpg" -%}
<div>
  <figure style="width:50%; 
    margin: 0px 20px 20px 20px; float: right;">
    <img src="{{- amps_prototype | relative_url -}}" alt="Prototype of strain gage signal conditioning circuit." style="border: 1px solid #555;">
    <figcaption style="font-size: smaller; color: grey; font-style: italic;">FIGURE 4: Prototype of strain gage signal conditioning circuit.</figcaption>
  </figure>
</div>

<p>
A prototype (Fig. 4) was developed and it was verified manually and on a tensile test machine.
</p>
<p>
With all the components finalized, it came down to PCB design. The signal conditioning circuit was quite simple but careful consideration was taken to reduce noise based on best practices; such as ground shielding (Fig. 5). 
</p>

{%- assign amps_pcb = "/assets/baja_sae/2016/PCB_Amp-350Bridge.PNG" -%}

<div>
  <figure style="width:75%; display:block; margin: 20px auto;">
    <img src="{{- amps_pcb | relative_url -}}" alt="PCB for strain gage signal conditioning circuit." style="display: block; margin: auto; border: 1px solid #555;">
    <figcaption style="font-size: smaller; color: grey; font-style: italic; text-align: center;">FIGURE 5: PCB for strain gage signal conditioning circuit.</figcaption>
  </figure>
</div>

<p>
With the completed signal conditioning circuit, a final calibration curve was developed by making use of resistors for completing the wheatstone bridge and shunting the simulated strain gage. Basing the resistance on expected values provided in the strain gage technical documentation.
</p>
{%- assign amps_calibration = "/assets/baja_sae/2016/sg_amp_calibration_curve.jpg" -%}
<div>
  <figure style="width:100%; margin: 0px 0px 20px 0px; text-align: center;">
    <img src="{{- amps_calibration | relative_url -}}" alt="Image of signal conditioning boards calibration curves for each gain." style="
     border: 1px solid #555;">
    <figcaption style="font-size: smaller; color: grey; font-style: italic; text-align: center;">FIGURE 6: Signal conditioning board's calibration curves for each gain.</figcaption>
  </figure>
</div>

<p>
The strain gages were then able to validate that the experimantal loading conditions of the suspenion. This was huge step in the team's ability to collect invaluable data in order to complete the engineering design cycle.
</p>
{%- assign sg_susp_image = "/assets/baja_sae/2016/sg_mounted_with_fea.jpg" -%}
<div>
  <figure style="width:100%; margin: 0px 0px 20px 0px; text-align: center; ">
    <img src="{{- sg_susp_image | relative_url -}}" alt="Image of strain gages mounted to suspension arms with FEA." style="width:100%; border: 1px solid #555;">
    <figcaption style="font-size: smaller; color: grey; font-style: italic; text-align: center;">FIGURE 7: Strain gages mounted to suspension arms on locations of high stress as indicated in FEA.</figcaption>
  </figure>
</div>

{%- assign trail_arm_strain_data_hi = "/assets/baja_sae/2016/trailing-arm_strain_high-gain.jpg" -%}
<div>
  <figure style="width:100%; margin: 0px 0px 20px 0px; text-align: center;">
    <img src="{{- trail_arm_strain_data_hi | relative_url -}}" alt="Graphed data displaying strain data of each strain gage versus time." style="width:100%; border: 1px solid #555;">
      <figcaption style="font-size: smaller; color: grey; font-style: italic; text-align: center;">FIGURE 8: Graphed data displaying strain data of each strain gage of a rosette on the suspension trailing arm.</figcaption>
  </figure>
</div>



<br>
