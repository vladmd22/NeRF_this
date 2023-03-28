#!/bin/bash

pwd; hostname; date

echo Assigned GPU: $CUDA_VISIBLE_DEVICES

source activate nerf-this
cd ~NeRF_this

python train_nerf_new.py --config config/fern_random_batching.yml


date
