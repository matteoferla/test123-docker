#!/bin/bash

#HOME=/home/debian
#mkdir $HOME
#cd $HOME

su - debian

echo 'home: '$HOME
echo 'pwd: '$PWD
echo 'hostname: '$(hostname)
echo "user: "$USER
echo whoami
echo  "slot: "$_CONDOR_SLOT
grep -c ^processor /proc/cpuinfo
cat /etc/os-release
echo '##############################'
ls -la $HOME
echo '##############################'

touch $HOME/touched-in-ubuntu.txt
ls $HOME -l
echo '##############################'
ls /
touch /scratch/touched-in-ubuntu.txt
echo '##############################'
ls /scratch