---
layout: post
title: "Automation of Bearing In-Process Conformance Test"
categories:
  - Professional Projects
tags:
  - Aerospace
  - ISO9001
  - AS9100 Rev.D
  - Quality
  - Quality Guidelines
  - Automated Inspection
  - Optical Visual Measurement Machine
last_modified_at: 2024-03-12
---
>Goal: Automate the inspection of the bearing conformance test to applicable internal/industry specifications. <br>

<h3>Why was this important?</h3>
<ul>
  <li>Quality management desired to reduce the time spent performing the test as well as reduce conflicts between inspectors and manufacturing management.
  </li>
  <li>Reduce human bias during the conformance test.
  </li>
</ul>

<h3>What was the process before changes were implemented?</h3>
<ol>
  <li>Swage operator documents machine setup details on form, prepares the first article or last swaged piece and submits the form with the first article (or last swaged piece) into the inspection queue.
  </li>
  <li>Assigned inspector conducts the conformance test (peel test and gap measurements).
  </li>
  <ol style="list-style-type:lower-alpha"> 
    <li>Based on the type of bearing, lines are scribed for the documentation specified measurement locations (ex: AS9100D, AS81820).
    </li>
    <li>Measurements of the race to ball gap are measured at the scribed locations with the use of an optical measurement device.
    </li>
    <ol style="list-style-type:lower-roman"> 
      <li>If failed, an MRR (Material Rejection Review) document is initiated and the form with the test piece is moved for review by a Quality Engineer, where further lot tests can take place.
      </li>
      <li>If passed, the lot may proceed through its manufacturing process.
      </li>
    </ol>
  </ol>
</ol>

{%- assign rtv_mold_img = "/assets/rbc/conformity_rtv_mold_v1.png" -%}
<img src="{{- rtv_mold_img | relative_url -}}" alt="RTV Mold" style="width:50%; float: right; margin: 0px 0px 10px 20px; border: 1px solid #555;">

{%- assign abs_mold_img = "/assets/rbc/conformity_abs_mold_v1.png" -%}
<img src="{{- abs_mold_img | relative_url -}}" alt="ABS Mold" style="width:50%; float: right; margin: 0px 0px 0px 20px; border: 1px solid #555;">

<h3>How was the goal realized?</h3>
<ul>
  <li>I revised all specifications that were required to be adhered to.</li>
  <ul>
    <li>I compiled the pertinent criteria.</li>
    <li>The internal specification had conflicts when I reviewed it against industry/customer specifications. Corrections/changes were submitted to the design department.
    </li>
    <li>If the internal specification did not cover a subset of products. Changes with references to industry/customer specifications were submitted to the design department.
    </li>
  </ul>
  <li> Tooling and bearing conformance test prep. process adjustments were developed to allow for the VMM (Vision Measurement Machine) to locate the bearing in its mold as well as ensuring a consistent sanded surface.
  </li>
  <ul>
    <li>RTV molds were developed to ensure consistent positioning in the acrylic mold.</li>
    <ul>
      <li>For larger bearings, this tool greatly aided the operator in reducing the effort required to remove the test specimen from the previous metal molds. </li>
    </ul>
    <li>Alternate epoxies were investigated for consistincies in their cure volume.</li>
    <li>Sanding procedures were adjusted to ensure true visibility of the race-to-ball gap of the bearing.</li>
    <li>Tooling was developed to ensure the sanded bearing surface was parallel to the VMM's surface plate.</li>
    <li>A locating bracket was placed to ensure the VMM can locate the bearing looking in the same general location. All tooling was adjusted to ensure consistency was possible despite human error.</li>
  </ul>
</ul>

{%- assign vmm_img = "/assets/rbc/conformity_vmm.png" -%}
<img src="{{- vmm_img | relative_url -}}" alt="RTV Mold" style="width:25%; float: right; margin: 0px 0px 10px 20px; border: 1px solid #555;">

{%- assign vmm_bearing_img = "/assets/rbc/conformity_auto_vmm_ex.png" -%}
<img src="{{- vmm_bearing_img | relative_url -}}" alt="RTV Mold" style="width:25%; float: right; margin: 0px 0px 0px 20px; border: 1px solid #555;">


<h3>Results</h3>
<p> Initial implementation required much training for the inspectors to become accustomed to the VMM, in addition to the new inspection process.</p>
<p> The automation proved itself reliable in test results, but was limited in speed by the lack of computer knowledge of inspectors, as well as the limited functionality provided by the VMM.</p>