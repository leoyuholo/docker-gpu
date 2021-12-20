#!bin/bash
set -e

mamba install -y pytorch torchvision torchaudio cudatoolkit=11.3 -c pytorch -c conda-forge
