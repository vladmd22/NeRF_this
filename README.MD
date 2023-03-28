# NeRF_this

This is ML course 2023 final project : "Novel view synthesis with neural radiance fields" or simply NeRF

We used the provided GitHub (https://github.com/colmap/colmap) repository to access the NeRF algorithm's implementation. 
We executed the code on two datasets: the synthetic 360 Lego dataset and the real forward facing LLFF Fern dataset. Both provided by folowing [link](https://drive.google.com/drive/folders/128yBriW1IG_3NJ5Rp7APSTZsJqdJdfc1). We replicated [Berkeley’s paper](https://arxiv.org/pdf/2003.08934.pdf) results. 

In this project we implement COLMAP [link to github](https://github.com/colmap/colmap) and nerf-pytorch [link to github](https://github.com/yenchenlin/nerf-pytorch)

First of all we derivee and explained the formula for casting rays (provided in the report). Then trained NeRF model  on downloaded synthetic Lego dataset and real LLFF Fern dataset. As the result obtained mean PSNR and SSIM metrics on train and test images, mean reconstruction time per 1 image and training curves. 



Conclusion: Nerf has a mean reconstruction time of more than 8 hours per objects (11+ in the training phase). Several artifacts appears.


You can download Instant NGP [here](https://github.com/NVlabs/instant-ngp/blob/master/docs/nerf_dataset_tips.md)


## :computer: Installation

All the tests were performed using Google Colab GPU's Tesla P100.

        git clone https://github.com/melhaud/proj18.git

The requred packages can be installed from ``requirements.txt``:

        pip install -r requirements.txt

Or by creating custom environment nerf-this by simply running:

        conda create env

![](fern.gif)

![](lego.gif)


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





As u can see on example there is some artifacts on the picture.

(ВСТАВИТЬ КАРТИНКУ)

Extract train and test camera-to-world matrices and intrinsic parameters by
COLMAP framework. It is possible that COLMAP will not converge, so try to
change the parameters or restart it. Retrain NeRF on the COLMAP poses and
compare results with the case when poses are known. Is the difference between
these two setups significant in terms of PSNR and SSIM metrics?

| Time for ach alg | Lego | Fern |
| --- | --- | --- |
| NeRF (Training time) | 10.66h | 12.5h |
| NeRFC (Training time) | 9h | 11.5h |
| NeRF (Time per image) | 1.5004245221614838 | 2.631760017077128 |
| NeRFC (Time per image) | 1.4980448603630065 | 2.626609440644582 |

The code presented here was highly inspired by LINKS TO GIT HUB REPOSITORIES

## Description

## Team

+ Anton Labutin
+ Marco Offidani
+ Maryush Soroka
+ Vladislav Mityukov
+ Yunseok Park

## Obtained results
