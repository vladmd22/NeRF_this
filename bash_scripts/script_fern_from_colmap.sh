#!/bin/bash

pwd; hostname; date

echo Assigned GPU: $CUDA_VISIBLE_DEVICES

source activate nerf_this
cd ~/NeRF_this

python train_nerf.py --config config/fern_from_colmap.yml

date
