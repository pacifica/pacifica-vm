FROM geerlingguy/docker-centos8-ansible:latest
LABEL maintainer="David Brown"

COPY ./ /etc/ansible/pacifica-vm/
RUN ansible-galaxy install -r /etc/ansible/pacifica-vm/requirements.yml -p /etc/ansible/roles
ENTRYPOINT /lib/systemd/systemd