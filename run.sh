#!/bin/bash

export CUDA_VISIBLE_DEVICES=0

python gen_class_names.py dtd
python gen_prompts.py dtd
python train_clap.py configs/dataset_configs/dtd/train.yaml
python eval_zeroshot.py configs/dataset_configs/dtd/eval.yaml