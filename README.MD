# NeRF_this
This is ML course 2023 final project : "Novel view synthesis with neural radiance fields"

Based on article [Mildenhall et al. 2021](https://arxiv.org/pdf/2003.08934.pdf) NeRF: Representing Scenes as
Neural Radiance Fields for View Synthesis. We perform...

In this project we implement COLMAP [link to github](https://github.com/colmap/colmap) and nerf-pytorch [link to github](https://github.com/yenchenlin/nerf-pytorch)



[Data link](https://drive.google.com/drive/folders/128yBriW1IG_3NJ5Rp7APSTZsJqdJdfc1) 

**Proposal:**

Reproduce paper results for synthetic and real problems, run COLMAP and 
compare results, understand theory and derive formula for ray-casting.
Reproduce some results of NeRF algorithm for the problem of novel view 
synthesis. We’ll compare synthetic (both train and test images have exact 
camera-to-world matrices and intrinsic parameters like focal strength and principal 
point coordinates) and real problems (only images of the scene are available and 
we have to extract estimation of camera-to-world matrices and intrinsic 
parameters by COLMAP framework, which implements Structure-from-Motion and 
Multi-View Stereo methods).


First of all we derivee and explained the formula for casting rays in the code (link). For this task plot
coordinate system used in NeRF convention and use similar triangles.

Download synthetic Lego dataset and real LLFF Fern dataset in the NeRF paper.
Train NeRF model on these datasets, report mean PSNR and SSIM metrics on train and test images. Report mean reconstruction time per 1 image and training curves.
Do your novel images look realistic? Which artifacts can you observe?

Extract train and test camera-to-world matrices and intrinsic parameters by
COLMAP framework. It is possible that COLMAP will not converge, so try to
change the parameters or restart it. Retrain NeRF on the COLMAP poses and
compare results with the case when poses are known. Is the difference between
these two setups significant in terms of PSNR and SSIM metrics?


## Description

## Team

+ Anton Labutin 
+ Marco Offidani 
+ Maryush Soroka 
+ Vladislav Mityukov 
+ Yunseok Park 

## Obtained results
