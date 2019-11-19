#!/usr/bin/env bash
source activate tf14_gpu
python run_pretraining.py \
    --input_file=tf_example.tfrecord \
    --output_dir=outputs \
    --do_train=True \
    --do_eval=True \
    --bert_config_file=chinese_L-12_H-768_A-12/bert_config.json \
    --init_checkpoint=outputs/model.ckpt-20 \
    --train_batch_size=8 \
    --max_seq_length=100 \
    --max_predictions_per_seq=20 \
    --num_train_steps=30 \
    --num_warmup_steps=10 \
    --learning_rate=2e-5