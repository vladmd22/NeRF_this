#!/bin/bash

pwd; hostname; date

echo Assigned GPU: $CUDA_VISIBLE_DEVICES

source activate nerf_this
cd ~/NeRF_this

python eval_nerf.py --config config/fern_from_colmap.yml \
    --checkpoint ~/NeRF_this/logs_fern/fern_from_colmap_final_img_8/checkpoint249999.ckpt \
    --savedir ~/NeRF_this/images_eval/fern_from_colmap --save-disparity-image

date
