#!/bin/bash

#apt-get install zlib1g-dev -y
wget https://www.python.org/ftp/python/3.9.7/Python-3.9.7.tar.xz
tar -xf Python-3.9.7.tar.xz
cd Python-3.9.7
./configure
sudo make altinstall
python3.9 --version
