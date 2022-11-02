FROM debian
RUN apt update -y && apt upgrade -y
RUN apt install sudo -y

RUN useradd debian -d /home/debian -s /bin/bash -m --groups sudo -p U6aMy0wojraho
RUN echo "%sudo   ALL=(ALL:ALL) NOPASSWD:ALL" > /etc/sudoers

#RUN echo 'debian:debian' | chpasswd
#RUN echo 'root:debian' | chpasswd
#RUN apt install openssh-server -y
#RUN mkdir /var/run/sshd
#RUN sed -i 's/PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config
#RUN sed 's@session\s*required\s*pam_loginuid.so@session optional pam_loginuid.so@g' -i /etc/pam.d/sshd
#EXPOSE 22
RUN chmod 666 -R /home/debian
#USER debian
#RUN ssh-keygen -t test -f /home/debian/.ssh/id_test
#USER root
#CMD ["/usr/sbin/sshd", "-D"]

USER debian
ENV HOME /home/debian
ENV USER debian

# https://htcondor.readthedocs.io/en/latest/users-manual/docker-universe-applications.html
# scratch directory become the mounted volume
VOLUME scratch
