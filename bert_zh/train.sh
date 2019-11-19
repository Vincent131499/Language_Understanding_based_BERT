#!/usr/bin/env bash
source activate tf14_gpu
export BERT_BASE_DIR=chinese_L-12_H-768_A-12
export DATA_DIR=5折交叉验证的数据集/5折
export TRAINED_CLASSIFIER=model_files
export MODEL_NAME=roberta-wwm_law_sim_epoch20_v6_5折

#如果你从现有的模型基础上训练，指定一下BERT_BASE_DIR的路径，并确保bert_config_file和init_checkpoint两个参数的值能对应到相应的文件上。
python run_classifier_serving.py \
  --task_name=sentence_pair \
  --do_train=True \
  --do_eval=True \
  --do_predict=False \
  --data_dir=$DATA_DIR \
  --vocab_file=$BERT_BASE_DIR/vocab.txt \
  --bert_config_file=$BERT_BASE_DIR/bert_config.json \
  --init_checkpoint=outputs/model.ckpt-30 \
  --max_seq_length=64 \
  --train_batch_size=8 \
  --learning_rate=2e-5 \
  --num_train_epochs=2.0 \
  --output_dir=$TRAINED_CLASSIFIER/$MODEL_NAME