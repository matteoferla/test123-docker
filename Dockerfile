FROM debian
RUN apt update -y && apt upgrade -y
RUN apt install sudo -y
RUN useradd debian -d /home/node -s /bin/bash -m
USER debian
ENV HOME /home/debian
ENV USER debian
# https://htcondor.readthedocs.io/en/latest/users-manual/docker-universe-applications.html
# scratch directory become the mounted volume
VOLUME scratch

#EXPOSE 22/tcp
#EXPOSE  6666
