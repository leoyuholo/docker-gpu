#!bin/bash
set -e

conda install -y pytorch torchvision torchaudio cudatoolkit=11.6 -c pytorch -c conda-forge
