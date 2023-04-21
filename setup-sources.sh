#!/bin/bash

set -x -e

export DEBIAN_FRONTEND=noninteractive;

mkdir /content

# 1. Add sources which found in google colab container: /etc/apt/sources.*
apt update
apt install -y curl python3.9 python3.9-dev python3-pip vim git screen aria2 wget
apt install -y --no-install-recommends software-properties-common dirmngr
wget -qO- https://cloud.r-project.org/bin/linux/ubuntu/marutter_pubkey.asc | tee -a /etc/apt/trusted.gpg.d/cran_ubuntu_key.asc
add-apt-repository "deb https://cloud.r-project.org/bin/linux/ubuntu $(lsb_release -cs)-cran40/"
apt install -y --no-install-recommends r-base
add-apt-repository ppa:c2d4u.team/c2d4u4.0+
# add addtional apt source
add-apt-repository ppa:ubuntugis/ppa

# 2. Set python3.9 as default
ln -sf /usr/bin/python3.9 /usr/bin/python3
ln -sf /usr/bin/python3 /usr/bin/python
