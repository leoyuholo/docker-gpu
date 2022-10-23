#!bin/bash

conda update -y -n base -c defaults conda
conda install -y -c conda-forge mamba=0.27

# conda install conda-libmamba-solver
# conda config --set experimental_solver libmamba
