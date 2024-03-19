<!-- ---
layout: post
title: "Vehicle Image Segmentation with U-Net Neural Network"
categories:
  - University Projects
tags:
  - Robotics
  - Neural Networks
  - A.I.
  - Computer Vision
  - Python
  - Tensorflow
last_modified_at: 2024-03-12
---
<!-- Goal: Develop a neural network to identify vehicles in given test data from the real world using U-Net.
Semantic-Segmentation: The purpose of semantic image segmentation is to label each pixel of an image with its corresponding class from what is being represented. -->

<p>
The objective was to develop a neural network utilizing the U-Net architecture for semantic segmentation, specifically for identifying vehicles within real-world test data. Semantic segmentation involved labeling each pixel in an image with its corresponding class, providing detailed understanding of the image content.
</p>
<p>
The U-Net architecture was chosen for its capability to preserve spatial information while efficiently capturing contextual features. By utilizing a contracting path to capture context and a symmetric expanding path to enable precise localization, U-Net facilitated accurate segmentation of objects within images.
</p>
<p>
To achieve the goal of vehicle identification, the neural network was trained on a dataset containing images annotated with pixel-level labels indicating the presence of vehicles. During training, the network learned to differentiate between vehicle and non-vehicle pixels, enabling it to accurately segment vehicles in unseen test data.
</p>
<p>
By leveraging U-Net for semantic segmentation, the developed neural network enabled robust and precise identification of vehicles within real-world images, contributing to various applications such as autonomous driving, traffic monitoring, and urban planning.
</p>

<!-- {%- assign trail_arm_stress_data = "/assets/baja_sae/2016/trailing-arm_stresses.jpg" -%}
<div>
  <img src="{{- trail_arm_stress_data | relative_url -}}" alt="Graphed data displaying stresses and suspension travel versus time." style="width:50%; float: left; 
margin: 10px 20px 10px 0px; border: 1px solid #555;">
</div> --> -->