#!/bin/bash

version=$(docker images | awk '($1 == "gpu-conda-jupyter") {print $2 += .01; exit}')
if [ -z $version ]; then
  . build.sh
fi

nb_dir=${HOME}/jupyter
mkdir $nb_dir
test -d ${nb_dir}/data || ln -s /data ${nb_dir}/data
test -d ${nb_dir}/demo || ln -s /demo ${nb_dir}/demo

USERID=$(id -u) GROUPID=$(id -g) docker-compose -p ${USER}-gpu up -d
docker compose -p ${USER}-gpu exec jupyter /bin/bash -c 'cd /jupyter && /bin/bash /scripts/run.sh'
