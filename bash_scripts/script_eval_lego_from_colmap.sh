#!/bin/bash

pwd; hostname; date

echo Assigned GPU: $CUDA_VISIBLE_DEVICES\

source activate nerf_this
cd ~/NeRF_this

python eval_nerf.py --config config/lego_from_colmap.yml \
    --checkpoint ~/NeRF_this/logs_lego/lego_final_from_colmap/checkpoint100000.ckpt \
    --savedir ~/NeRF_this/images_eval/lego_from_colmap_1 --save-disparity-image

date



