#!bin/bash

wget --quiet https://repo.anaconda.com/archive/Anaconda3-5.3.0-Linux-x86_64.sh -O ~/anaconda.sh
/bin/bash ~/anaconda.sh -b -p /opt/conda
rm ~/anaconda.sh
ln -s /opt/conda/etc/profile.d/conda.sh /etc/profile.d/conda.sh
echo ". /opt/conda/etc/profile.d/conda.sh" >> ~/.bashrc
echo "conda activate base" >> ~/.bashrc

echo "Please logout first (exit or ctrl-D), and login again using 'exec.sh', then run 'scripts/run.sh' to start Jupyter Notebook"
