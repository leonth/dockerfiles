# Almost line-by-line copy from http://docs.docker.io/examples/running_ssh_service/ .
FROM ubuntu
RUN apt-get update && apt-get install -y openssh-server
RUN mkdir /var/run/sshd
RUN echo 'root:root' | chpasswd
EXPOSE 22
CMD /usr/bin/sshd -D
