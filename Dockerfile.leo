FROM gpu-conda-jupyter:latest

COPY ./scripts /scripts

RUN bash /scripts/setup_jupyter.sh
