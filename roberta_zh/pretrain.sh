#!/usr/bin/env bash

#export BERT_BASE_DIR=./chinese_roberta_zh_l12
#python run_pretraining.py --input_file=./tf_records_all/tf*.tfrecord  \
#--output_dir=my_new_model_path --do_train=True --do_eval=True --bert_config_file=$BERT_BASE_DIR/bert_config.json \
#--train_batch_size=8192 --max_seq_length=256 --max_predictions_per_seq=23 \
#--num_train_steps=200000 --num_warmup_steps=10000 --learning_rate=1e-4    \
#--save_checkpoints_steps=3000  --init_checkpoint=$BERT_BASE_DIR/bert_model.ckpt  &

export BERT_BASE_DIR=./chinese_roberta_zh_l12
python run_pretraining.py --input_file=./tf_records_all/tf*.tfrecord  \
--output_dir=my_new_model_path_base --do_train=True --do_eval=True --bert_config_file=./chinese_roberta_zh_l12/bert_config.json \
--train_batch_size=4 --max_seq_length=128 --max_predictions_per_seq=23 \
--num_train_steps=125000 --num_warmup_steps=12500 --learning_rate=1e-4    \
--save_checkpoints_steps=2000  &