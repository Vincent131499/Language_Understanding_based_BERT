#!/usr/bin/env bash
source activate tf14_gpu
python create_pretraining_data.py \
    --input_file=law_minshi_example1.txt \
    --output_file=tf_example.tfrecord \
    --vocab_file=chinese_L-12_H-768_A-12/vocab.txt \
    --do_lower_case=True \
    --max_seq_length=100 \
    --max_predictions_per_seq=20 \
    --masked_lm_prob=0.15 \
    --random_seed=12345 \
    --dupe_factor=5 \
