FROM geerlingguy/docker-centos8-ansible:latest
LABEL maintainer="David Brown"

COPY ./ /etc/ansible/
COPY ./config.yml /etc/ansible/pacifica-vm/local.config.yml
RUN ansible-galaxy install -r /etc/ansible/requirements.yml -p /etc/ansible/roles
ENTRYPOINT /lib/systemd/systemd