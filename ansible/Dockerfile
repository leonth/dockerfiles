FROM leonth/ubuntu

# Install ansible
RUN apt-get install -y software-properties-common
RUN add-apt-repository ppa:rquillo/ansible
RUN apt-get update && apt-get install -y ansible python-apt

ADD hosts /etc/ansible/hosts
