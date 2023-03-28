#!/bin/bash

pwd; hostname; date

echo Assigned GPU: $CUDA_VISIBLE_DEVICES

source activate nerf_thiss
cd ~/NeRF_this

python eval_nerf.py --config config/fern.yml \
    --checkpoint ~/NeRF_this/logs_fern/fern_final/checkpoint249999.ckpt \
    --savedir ~/NeRF_this/images_eval/fern --save-disparity-image

date
