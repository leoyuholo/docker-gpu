FROM gpu-conda-jupyter:latest

RUN apt-get update && apt-get install -y openssh-server

RUN mkdir /var/run/sshd

ADD ./ssh/authorized_keys /root/.ssh/authorized_keys
RUN chown root:root /root/.ssh/authorized_keys; chmod 664 /root/.ssh/authorized_keys

ADD ./ssh/sshd_config /etc/ssh/sshd_config
RUN chown root:root /etc/ssh/sshd_config; chmod 664 /etc/ssh/sshd_config

EXPOSE 22

RUN bash /scripts/setup_jupyter.sh
