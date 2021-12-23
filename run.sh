#!/bin/bash

version=$(docker images | awk '($1 == "gpu-conda-jupyter") {print $2 += .01; exit}')
echo $version
if [ -z $version ]; then
  . build.sh
fi

USERID=$(id -u) GROUPID=$(id -g) docker-compose -p ${USER}-gpu up
