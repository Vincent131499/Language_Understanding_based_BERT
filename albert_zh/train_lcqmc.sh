#!/usr/bin/env bash

export BERT_BASE_DIR=./albert_config/albert_tiny
export TEXT_DIR=./data/LCQMC
python run_classifier.py   --task_name=lcqmc_pair   --do_train=true   --do_eval=true   --data_dir=$TEXT_DIR   --vocab_file=$BERT_BASE_DIR/vocab.txt  \
--bert_config_file=$BERT_BASE_DIR/albert_config_tiny.json --max_seq_length=128 --train_batch_size=32   --learning_rate=1e-4  --num_train_epochs=2 \
--output_dir=albert_tiny_lcqmc_checkpoints --init_checkpoint=$BERT_BASE_DIR/albert_model.ckpt &