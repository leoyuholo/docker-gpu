#!bin/bash
set -e

wget --quiet https://repo.anaconda.com/miniconda/Miniconda3-py38_4.8.3-Linux-x86_64.sh -O ~/miniconda.sh
/bin/bash ~/miniconda.sh -b -p /opt/conda
rm ~/miniconda.sh

# wget --quiet https://repo.anaconda.com/archive/Anaconda3-2020.07-Linux-x86_64.sh -O ~/anaconda.sh
# /bin/bash ~/anaconda.sh -b -p /opt/conda
# rm ~/anaconda.sh

ln -s /opt/conda/etc/profile.d/conda.sh /etc/profile.d/conda.sh
echo ". /opt/conda/etc/profile.d/conda.sh" >> ~/.bashrc
echo "conda activate base" >> ~/.bashrc
. /opt/conda/etc/profile.d/conda.sh

conda install -y pip

# echo "Please logout first (exit or ctrl-D), and login again using 'exec.sh', then run 'scripts/run.sh' to start Jupyter Notebook"
