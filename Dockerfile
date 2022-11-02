FROM debian
RUN apt-get sudo
RUN useradd debian -d /home/node -s /bin/bash -m
USER debian
ENV HOME /home/debian
ENV USER debian
# https://htcondor.readthedocs.io/en/latest/users-manual/docker-universe-applications.html
# scratch directory become the mounted volume
VOLUME scratch

#EXPOSE  6666
