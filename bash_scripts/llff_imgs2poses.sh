#!/bin/bash

colmap feature_extractor --database_path ./data_colmap/nerf_llff_data/fern/database.db \
    --image_path ./data_colmap/nerf_llff_data/fern/images_8 \
    --ImageReader.single_camera 1

colmap exhaustive_matcher --database_path ./data_colmap/nerf_llff_data/fern/database.db

mkdir ./data_colmap/nerf_llff_data/fern/sparse

colmap mapper --database_path ./data_colmap/nerf_llff_data/fern/database.db \
    --image_path ./data_colmap/nerf_llff_data/fern/images_8 \
    --output_path ./data_colmap/nerf_llff_data/fern/sparse \
    --Mapper.num_threads 16 \
    --Mapper.init_min_tri_angle 4 \
    --Mapper.multiple_models 0 \
    --Mapper.extract_colors 0

python llff_colmap2poses.py ./data_colmap/nerf_llff_data/fern
