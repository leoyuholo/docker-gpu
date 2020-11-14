#!/bin/bash

jupyter=$1
if [ -z "$1" ]; then
  jupyter=notebook
fi

jupyter ${jupyter} --notebook-dir=/tf --ip 0.0.0.0 --no-browser --allow-root

# jupyter notebook --notebook-dir=/tf --ip 0.0.0.0 --no-browser --allow-root
# jupyter lab --notebook-dir=/tf --ip 0.0.0.0 --no-browser --allow-root
