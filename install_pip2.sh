#!/bin/bash

# tested Ubuntu 20.04
echo "Setting up pip2"
cd
wget https://bootstrap.pypa.io/pip/2.7/get-pip.py
sleep 2
sudo python2 get-pip.py
pip2 install --upgrade setuptools
sudo apt-get install python-dev -y 
echo "DONE!!!"
