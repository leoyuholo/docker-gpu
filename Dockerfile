FROM tensorflow/tensorflow:2.8.0-gpu

COPY ./scripts /scripts

SHELL ["/bin/bash", "--login", "-c"]

RUN bash /scripts/setup.sh

RUN bash /scripts/setup_cont.sh

ENV PATH=/opt/conda/bin:$PATH

RUN chmod +x /scripts/run.sh

CMD ["bash", "-c", "/scripts/run.sh"]
