---
layout: post
title: "Bearing In-Process Conformance Test Database Development"
categories:
  - Professional Projects
tags:
  - Aerospace
  - ISO9001
  - AS9100 Rev.D
  - Quality
  - Quality Guidelines
  - Database Development
  - Microsoft Access
  - Visual Basic
last_modified_at: 2024-03-12
---

<!-- Time: 3 months for design and documentation, 1 month to teach and ensure stability -->

>Goal: Document results of spherical conformance tests on network drive and check results of conformance test to applicable internal/industry specifications. <br>

{%- assign boxes_img= "/assets/rbc/conformity_storage.png" -%}
<img src="{{-  boxes_img | relative_url -}}" alt="Image of test specimen storage" style="width:25%; float: right; 
margin: 0px 0px 0px 20px; border: 1px solid #555;">

<h3>Why was this important?</h3>
<ul>
  <li>Customers required that RBC TDC maintain records of conformance test results for 7 years along with physical pieces measured. This has developed a large stockpile of physical conformance test records and test pieces which was becoming expensive.
  </li>
  <li>Backtracking for any reason is extremely tedious since finding a conformance test requires sifting through forms and boxes of test pieces.
  </li>
  <li>Inspectors could not reliably check conformity results to all applicable specifications.
  </li>
</ul>

{%- assign paper_form_img= "/assets/rbc/conformity_paper_doc.png" -%}
<img src="{{-  paper_form_img | relative_url -}}" alt="Image of conformity paper form storage" style="width:25%; float: right; 
margin: 0px 0px 0px 20px; border: 1px solid #555;">

<h3>What was the process before changes were implemented?</h3>
<ol>
  <li>Swage operator documents machine setup details on form, prepares the first article or last swaged piece and submits the form with the first article (or last swaged piece) into the inspection queue.
  </li>
  <li>Assigned inspector conducts the conformance test (peel test and gap measurements).
  </li>
  <li>The assigned inspector then documents results onto the form initiated by the swage operator. Inspector either passes or fails the first article based on internal/industry specifications qualified to.
  </li>
  <ol style="list-style-type:lower-alpha"> 
    <li>If failed, an MRR (Material Rejection Review) document is initiated and the form with the test piece is moved for review by a Quality Engineer.
    </li>
    <li>If passed, the form is returned to the swage operator for storage and future reference. The test piece is marked with lot control information and stored in a container marked by the month and year.
    </li>
  </ol>
</ol>

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

  <li>I worked with IT to set up a computer with the inspection microscope to access the company shared network folders that all pertinent individuals could have access to.
  </li>

  <li>Purchased and set up a webcam to capture images of the conformity peel test results.
  </li>

  <li>I determined that Microsoft Access would be the best software to use since many database functions at this facility already used Access and there would be another employee with significant experience with Microsoft Access. I also had experience with VBA in order to program within the form.
  </li>
  <ul>
    <li>Based on previous form and pertinent specifications, a form was developed to dynamically capture any pertinent data.
    </li>
    <li>The form required images to be saved to a specific naming convention.
    </li>
  </ul>
</ul>
<h3>Results</h3>
<p>
  The transition to the database took longer than anticipated due to the lack of computer skills by the inspectors. Various methods of documentation (video, powerpoint and word document) were created to assist the inspectors of the night shift, supplemented by trainings. This resulted in the complete transition in about one month with no later effects to the manufacturing workflow.
</p>
<p>
  The immediate result of the database was an improvement in record keeping despite the difficulties transitioning to a digital form. In addition to not needing to maintain storage for past test specimens. 
</p>


{%- assign database_front= "/assets/rbc/conformity_database_front.png" -%}
{%- assign form1of2 = "/assets/rbc/conformity_report_form_m2m_1of2.png" -%}
{%- assign form2of2 = "/assets/rbc/conformity_report_form_m2m_2of2.png" -%}
<div>
  <img src="{{- database_front | relative_url -}}" alt="Database Front GUI" style="width:100%; border: 1px solid #555;">

  <img src="{{- form1of2 | relative_url -}}" alt="New Bearing Conformance Form" style="width:100%; border: 1px solid #555;">

  <img src="{{- form2of2 | relative_url -}}" alt="New Bearing Conformance Form" style="width:100%; border: 1px solid #555;">
</div>