#!/bin/bash
# sh scripts/uncertainty/regmixup/imagenet_test_ood_msp.sh

############################################
# we recommend using the
# new unified, easy-to-use evaluator with
# the example script scripts/eval_ood_imagenet.py

# available architectures:
# resnet50
# ood
python scripts/eval_ood_imagenet.py \
   --ckpt-path ./results/imagenet_resnet50_regmixup_e30_lr0.001_alpha10_default/ckpt.pth \
   --arch resnet50 \
   --postprocessor msp \
   --save-score --save-csv #--fsood

# full-spectrum ood
python scripts/eval_ood_imagenet.py \
   --ckpt-path ./results/imagenet_resnet50_regmixup_e30_lr0.001_alpha10_default/ckpt.pth \
   --arch resnet50 \
   --postprocessor msp \
   --save-score --save-csv --fsood
