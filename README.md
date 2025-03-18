# Detecting Out-of-Distribution through the Lens of Neural Collapse 

This repository contains code for the paper [Detecting Out-of-Distribution through the Lens of Neural Collapse](https://arxiv.org/abs/2311.01479) (CVPR 2025) by Litian Liu and Yao Qin. The codebase is adapted from and integrated into the 
[OpenOOD Benchmark](https://github.com/Jingkang50/OpenOOD/tree/main). 

Explore related work:    
> [![CVPR'25 fDBD](https://img.shields.io/badge/CVPR'25-fDBD-f4d5b3?style=for-the-badge)](https://github.com/litianliu/fDBD-OOD)

## Setup

Please follow [OpenOOD](https://github.com/Jingkang50/OpenOOD) official instruction to complete the setup.
```
pip install git+https://github.com/Jingkang50/OpenOOD
```

## Demo

CIFAR-10 ResNet-18 Benchmark
```
python scripts/eval_ood.py \
     --id-data cifar10 \
     --root ./results/cifar10_resnet18_32x32_base_e100_lr0.1_default \
     --postprocessor nci \
     --save-score --save-csv
```

ImageNet ResNet-50 Benchmark
```
python scripts/eval_ood_imagenet.py \
     --tvs-pretrained \
     --arch resnet50 \
     --postprocessor nci \
     --save-score --save-csv
```

## Citation

Please cite our paper if you find this codebase helpful! 

```bibtex
@article{liu2025detecting,
  title={Detecting Out-of-Distribution through the Lens of Neural Collapse},
  author={Liu, Litian and Qin, Yao},
  journal={IEEE Conference on Computer Vision and Pattern Recognition (CVPR)},
  year={2025}
}
```
