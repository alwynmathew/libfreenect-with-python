#!/bin/bash 
#
# Author : Alwyn Mathew
#
# Purpose : Install Libfreenect wrapper for python on Ubuntu 16.04

sudo apt-get install python-pip python-dev build-essential 
sudo apt-get install cython
sudo apt-get install python-dev
sudo apt-get install python-numpy
sudo pip install opencv-python

cd libfreenect/wrappers/python

sudo python setup.py install

echo installation finished!
