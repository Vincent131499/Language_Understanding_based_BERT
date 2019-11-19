#!/usr/bin/env bash

#export BERT_BASE_DIR=albert_base_zh
export BERT_BASE_DIR=albert_config
python run_pretraining.py --input_file=./data/tf*.tfrecord  \
--output_dir=my_new_model_tiny --do_train=True --do_eval=True --bert_config_file=$BERT_BASE_DIR/albert_config_tiny.json \
--train_batch_size=64 --max_seq_length=128 --max_predictions_per_seq=51 \
--num_train_steps=125000 --num_warmup_steps=12500 --learning_rate=0.00176    \
--save_checkpoints_steps=2000 --init_checkpoint=$BERT_BASE_DIR/albert_tiny/albert_model.ckpt &