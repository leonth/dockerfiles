# Almost line-by-line copy from http://docs.docker.io/examples/running_ssh_service/ .
FROM ubuntu:latest
RUN apt-get update && apt-get install -y openssh-server
RUN mkdir /var/run/sshd
RUN echo 'root:root' | chpasswd
# Allow root remote login for Ubuntu 14.04. See issue https://github.com/dotcloud/docker/issues/5663 and https://github.com/dotcloud/docker/issues/5554 .
RUN sed -ri 's/^session\s+required\s+pam_loginuid.so$/session optional pam_loginuid.so/' /etc/pam.d/sshd
RUN sed -ri 's/^PermitRootLogin\s+without-password$/PermitRootLogin yes/' /etc/ssh/sshd_config
EXPOSE 22
CMD /usr/sbin/sshd -D
