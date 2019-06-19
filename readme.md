# Docker + Jupyter + GPU

This repository holds the files for spinning up an Jupyter environment (with GPU if available).

## Prerequisite

Ubuntu environment with docker and docker-compose installed.

To install docker, see [here](https://docs.docker.com/install/linux/docker-ce/ubuntu/#install-using-the-convenience-script).

To install docker-compose, see [here](https://github.com/docker/compose/releases).

For GPU usage, nvidia-docker is also required, see [the project page](https://github.com/NVIDIA/nvidia-docker) for installation instructions.

## Spinning up an environment

There are 3 `.sh` files for conveniently use, `run.sh`, `exec.sh` and `stop.sh`.

`run.sh` is to create the docker containers and run in the background. But Jupyter Notebook is not started yet, you need to start Jupyter Notebook inside the container.

`exec.sh` gets a bash shell inside the container. In this bash shell, run `scripts/run.sh` to start Jupyter Notebook.

`stop.sh` stops the container, but keeping the configuration files.

## Persistent files (mapped volumns)

In your home directory, a `notebooks` directory will be created at the same time as the docker container is created. All the files inside this directory will persist, even after the containers are destroyed.

## Demo notebooks

After started Jupyter Notebook, go to `demo` directory, there are notebooks for installing PyTorch or other useful packages and a notebook for checking GPU availability.
