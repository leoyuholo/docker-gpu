#!bin/bash
set -e

mamba install -y pytorch torchvision torchaudio pytorch-cuda=12.1 -c pytorch -c nvidia
