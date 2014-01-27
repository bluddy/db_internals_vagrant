#!/usr/bin/env bash

apt-get update
apt-get install -y software-properties-common
apt-get install -y \
    openssh-server \
    git \
    libfreetype6-dev libpng-dev libpython-all-dev gcc gfortran ghostscript \
    db6.0-sql-util \
    libdb6.0++ \
    libdb6.0++-dev \
    libdb6.0-dev \
    libdb6.0-sql-dev

#adduser --gecos 'Database Systems' dbsys
wget http://repo.continuum.io/miniconda/Miniconda3-2.2.2-Linux-x86.sh 
mv Miniconda3-2.2.2-Linux-x86.sh /tmp
chmod 755 /tmp/Miniconda3-2.2.2-Linux-x86.sh; sudo -H -u vagrant /tmp/Miniconda3-2.2.2-Linux-x86.sh -b
sudo -i -H -u vagrant echo 'PATH=/home/vagrant/anaconda/bin:$PATH' >> /home/vagrant/.profile
sudo -i -H -u vagrant conda install anaconda --yes
