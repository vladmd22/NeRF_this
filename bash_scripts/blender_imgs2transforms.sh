#!/bin/bash
# TODO add other colmap transform

cp -R data/ data_colmap/
rm data_test/nerf_synthetic/lego/*.json 
find ./data_test/nerf_synthetic/lego/test -name '*depth*' -delete
find ./data_test/nerf_synthetic/lego/test -name '*normal*' -delete

DATABASE_PATH="./data_colmap/nerf_synthetic/lego/test_colmap/database.db"

for PATH in ./data_colmap/nerf_synthetic/lego/*/ ; do 
    echo "Working with $PATH"
    base=$(basename $PATH)
    echo "Base name is $base"
    
    TEMP_PATH="./data_colmap/${base}_colmap/"
    # echo "Temp directory: $TEMP_PATH"
    DATABASE_PATH="${TEMP_PATH}database.db"
    echo "Database directory: $DATABASE_PATH"

    colmap feature_extractor --database_path $DATABASE_PATH --image_path $PATH
    colmap exhaustive_matcher --database_path $DATABASE_PATH

    mkdir ${TEMP_PATH}_colmap/sparse/
    SPARSE_PATH="${TEMP_PATH}sparse/"
    echo "Sparse directory: $SPARSE_PATH"

    colmap mapper --database_path $DATABASE_PATH --image_path $PATH --output_path $SPARSE_PATH
    colmap model_converter --input_path ${SPARSE_PATH}0 --output_path $TEMP_PATH --output_type TXT

    python ./blender_colmap2transforms.py --images $PATH --text $TEMP_PATH --out ./data_colmap/nerf_synthetic/lego/transforms_${base}.json

    done








