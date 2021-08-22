#!/bin/bash

jupyter=$1
if [ -z "$1" ]; then
  jupyter=lab
fi

port=8888
if [ -z JUPYTER_PORT ]; then
  port=${JUPYTER_PORT}
fi

jupyter ${jupyter} --notebook-dir=/tf --ip 0.0.0.0 --no-browser --allow-root --port ${port}

# jupyter notebook --notebook-dir=/tf --ip 0.0.0.0 --no-browser --allow-root
# jupyter lab --notebook-dir=/tf --ip 0.0.0.0 --no-browser --allow-root
