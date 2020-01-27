FROM ubuntu:bionic

LABEL maintainer="jairbj"

ENV WORKDIR /root

WORKDIR $WORKDIR

RUN apt-get update \
    && apt-get upgrade -y \
    && apt-get install software-properties-common -y \
    && apt-add-repository ppa:ansible/ansible \
    && apt-get install ansible -y

COPY ansible.cfg /etc/ansible/ansible.cfg

# Restore ansible config file permissions
RUN chmod 644 /etc/ansible/ansible.cfg

ENTRYPOINT [ "/bin/bash", "-c"]
CMD ["/bin/bash"]