#!/bin/bash
#
# From https://docs.docker.com/engine/installation/linux/ubuntulinux/
#

apt-get -y update
apt-get -y install apt-transport-https ca-certificates

apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D

cat >/etc/apt/sources.list.d/docker.list <<EOT
deb https://apt.dockerproject.org/repo ubuntu-trusty main
EOT

apt-get -y update
apt-get -y purge lxc-docker
apt-cache policy docker-engine

apt-get -y update
apt-get -y install linux-image-extra-$(uname -r)
apt-get -y install apparmor

apt-get -y install docker-engine
service docker start
docker run hello-world

