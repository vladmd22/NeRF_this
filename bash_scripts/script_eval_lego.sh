#!/bin/bash

pwd; hostname; date

echo Assigned GPU: $CUDA_VISIBLE_DEVICES

source activate nerf_this
cd ~/NeRF_this


python eval_nerf.py --config config/lego.yml \
    --checkpoint ~/NeRF_this/logs_lego/lego_final/checkpoint199999.ckpt \
    --savedir ~/NeRF_this/images_eval/lego --save-disparity-image

date



