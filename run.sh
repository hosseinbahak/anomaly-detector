#!/bin/bash
set -e

# Create output directory if it doesn't exist
mkdir -p output_scores

# Run the main evaluation script
python run_winclip.py \
    --dataset mvtec \
    --batch-size 128 \
    --vis True \
    --root-dir "./result_winclip" \
    --load-memory True \
    --cal-pro False \
    --experiment_indx 0 \
    --k-shot 0 \
    --backbone "ViT-B-16-plus-240" \
    --pretrained_dataset "laion400m_e32" \
    --use-cpu 0
