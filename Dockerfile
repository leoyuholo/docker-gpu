FROM tensorflow/tensorflow:latest-gpu

ADD ./scripts /scripts

RUN bash /scripts/setup.sh

SHELL ["/bin/bash", "--login", "-c"]

RUN bash /scripts/setup_cont.sh

ENV PATH=/opt/conda/bin:$PATH

RUN chmod +x /scripts/run.sh

CMD ["bash", "-c", "/scripts/run.sh"]
