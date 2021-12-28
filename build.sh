#!/bin/bash

version=$(docker images | awk '($1 == "gpu-conda-jupyter") {print $2 += .01; exit}')

if [ -z $version ]; then
  version=0.01
fi

docker build . -t gpu-conda-jupyter:${version} -t gpu-conda-jupyter:latest
# docker build . -f Dockerfile.leo -t gpu-conda-jupyter:leo
