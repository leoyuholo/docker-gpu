#!bin/bash
set -e

mamba install -y -c pytorch -c conda-forge pytorch torchvision torchaudio cudatoolkit=11.3
