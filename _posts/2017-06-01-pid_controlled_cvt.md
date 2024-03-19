---
layout: post
title: "Novel PID Controlled Continuosly-Variable-Transmission for the 2017 CPP Baja Vehicle"
categories:
  - University Projects
tags:
  - Automotive
  - Baja SAE
  - Bachelor Thesis
  - Electrical Design
  - Electronics Packaging
  - Prototyping
  - CAN Bus
  - Transmission Design
  - Electro-Mechanical Design
  - Mechatronics Design
  - Control System
  - PID
last_modified_at: 2024-03-12
---
<style>
/* This element defines the size the iframe will take.
   In this example we want to have a ratio of 25:14 */
.aspect-ratio {
  position: relative;
  width: 100%;
  height: 0;
  padding-bottom: 56.25%; /* The height of the item will now be 56.25% of the width. */
}

/* Adjust the iframe so it's rendered in the outer-width and outer-height of it's parent */
.aspect-ratio iframe {
  position: absolute;
  width: 100%;
  height: 100%;
  left: 0;
  top: 0;
}

/* This element defines the size the iframe will take.
   In this example we want to have a ratio of 25:14 */
.pp-aspect-ratio {
  position: relative;
  width: 100%;
  height: 0;
  padding-bottom: 60.50%; /* The height of the item will now be 56.25% of the width. */
}

/* Adjust the iframe so it's rendered in the outer-width and outer-height of it's parent */
.pp-aspect-ratio iframe {
  position: absolute;
  width: 100%;
  height: 100%;
  left: 0;
  top: 0;
}
</style>

<div class="aspect-ratio" style="margin: 0px 0px 10px 0px">
<iframe width="560" height="315" src="https://www.youtube.com/embed/a8V2rchjSTU?si=qqL0MUuDbMJvUBP-&amp;clip=UgkxWL39tVZSvc2DNt3dd7D8JZ-RAZGhDav3&amp;clipt=EPiktwEY2Pm6AQ&autoplay=1&mute=1&loop=1" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe> 
</div>
<div class="message">
<p>
    <font size="-1">Video: Shows the 2017 Cal Poly Pomona vehicle at the 2017 Kansas Baja SAE competition's suspension and traction event. Our team placed 10th for this event among 100 other universities.</font>
</p>
</div>

<p>
Baja SAE is a collegiate design series sponsored by the Society of Automotive Engineers. Every year teams from across the globe design and manufacture one person off-road vehicles and compete in three competitions held across the United States. These four day competitions consist of Static and Dynamic events. The static events consist of a design presentation and sales presentation. The dynamic events are acceleration, suspension and traction, maneuverability and either sled pull or hill climb. Each competition ends with a four-hour endurance race where all student teams are pitted against each other on a track of one mile or greater. The dynamic events test each car's performance as well as its durability. 
</p>
<p>
To maintain fairness and safety, all vehicles must conform to rules published yearly by the Baja SAE coordinators. The most notable rule in the competition is the requirement to use a 10 horsepower Briggs & Stratton engine of the same model called out and it cannot be altered in any way.
</p>
><p><em>
“B2.5 Engine Requirement and Restrictions 
</em> [2017]</p>
><p><em>
To provide a uniform basis for the performance events, all vehicles must use the same engine: a stock four cycle, air cooled, Briggs & Stratton OHV Intek Model 19.  
</em></p>
><p><em>
The only engine model accepted at all 2017 Baja SAE North American competitions is Briggs & Stratton model number: 19L232-0054-G1 
</em></p>
><p><em>
No other engine models will be accepted.  No engine models from previous competition years will be accepted.” 
</em></p>
<p>
The need to perform in various situational events with limited power from the engine is why the continuously variable transmission (CVT) plays such a crucial role. Based on the limits of all mechanical systems CVT systems, it made more sense to implement an electronically actuated system. At its best, a mechanical system could not be dynamically changed for various scenarios. Additionally, greater integration of systems could be established for future teams.
</p>
{%- assign bs-thesis-pdf = "/assets/baja_sae/2017/e-cvt/Implementation of Controlled CVT.pdf" -%}
<p>
Working with <a href="https://www.linkedin.com/in/kasra-hashemi/" target="_blank">Kasra Hashemi,</a> we designed, prototyped, tested/validated the electronically controlled CVT (E-CVT) for all 2017 Baja SAE competitions. Additionally, this project E-CVT project was submitted for our 
<a href="{{- bs-thesis-pdf | relative_url -}}" target="_blank">Bachelor thesis.</a>
</p>



<div class="pp-aspect-ratio" style="margin: 0px 0px 10px 0px">
<iframe src="https://onedrive.live.com/embed?resid=8706B55282A10F7F%213408&amp;authkey=!AK9GiW5FKJwuprc&amp;em=2&amp;wdAr=1.7777777777777777" width="100%" height="100%" frameborder="0">This is an embedded <a target="_blank" href="https://office.com">Microsoft Office</a> presentation, powered by <a target="_blank" href="https://office.com/webapps">Office</a>.</iframe>
</div>

<div class = "message" style="font-size:16px; margin:10px">
<p>Competition Result Highlights:</p>
<ul>
  <li>California 2017</li>
    <ul>
      <li>12th Overall</li> 
      <li>5th in Design</li> 
      <li>10th in Maneuvarability</li> 
      <li>13th in Endurance</li>
    </ul>
  <li>Kansas 2017</li> 
    <ul>
      <li>4th Overall</li> 
      <li>4th in Suspension</li> 
      <li>14th in Sled Pull</li> 
      <li>8th in Maneuvarability</li> 
      <li>4th in Design</li>
    </ul>
  <li>Illinois 2017</li>
    <ul>
      <li>3rd in Design</li> 
      <li>11th in Maneuverability</li>
    </ul>
</ul>
</div>


<div class="message" style="margin:10px">
  <h4>Acknowledgements:</h4>
  <p>
  Mechanical design was accomplished thanks to 
  <a href="https://www.linkedin.com/in/kasra-hashemi/" target="_blank">Kasra Hashemi.</a>
  </p> 
  <p>
  Additionally, this project would not have been possible without the amazing team that was the 2017 Cal Poly Pomona, Baja SAE team and the SAE projects team supervisor <a href="https://www.linkedin.com/in/cliff-stover-pe/" target="_blank">Clifford Stover (PE).</a>

<div>