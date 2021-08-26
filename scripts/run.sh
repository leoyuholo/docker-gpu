#!/bin/bash

jupyter=$1
if [ -z "$1" ]; then
  jupyter=lab
fi

port=${JUPYTER_PORT}
if [ -z $JUPYTER_PORT ]; then
  port=8888
fi

jupyter ${jupyter} --notebook-dir=/tf --ip 0.0.0.0 --no-browser --allow-root --port ${port}

# jupyter notebook --notebook-dir=/tf --ip 0.0.0.0 --no-browser --allow-root
# jupyter lab --notebook-dir=/tf --ip 0.0.0.0 --no-browser --allow-root
