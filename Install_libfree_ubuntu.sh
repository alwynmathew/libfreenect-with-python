#!/bin/bash 
#
# Author : Alwyn Mathew
#
# Purpose : Install Libfreenect on Ubuntu 16.04

sudo apt-get update
sudo apt-get upgrade

sudo apt-get install git-core cmake freeglut3-dev pkg-config build-essential libxmu-dev libxi-dev libusb-1.0-0-dev

sudo apt-get install git

git clone git://github.com/OpenKinect/libfreenect.git

cd libfreenect
mkdir build
cd build
cmake -L ..
make
sudo make install
sudo ldconfig /usr/local/lib64/

dqt='"'
# ATTR{product}=="Xbox NUI Motor"
sudo su root -c "echo '''SUBSYSTEM==dqt=${dqt}usb${dqt}, ATTR{idVendor}==${dqt}045e${dqt}, ATTR{idProduct}==${dqt}02b0${dqt}, MODE=${dqt}0666${dqt}''' >> /etc/udev/rules.d/51-kinect.rules"
# ATTR{product}=="Xbox NUI Audio"
sudo su root -c "echo '''SUBSYSTEM==${dqt}usb${dqt}, ATTR{idVendor}==${dqt}045e${dqt}, ATTR{idProduct}==${dqt}02ad${dqt}, MODE=${dqt}0666${dqt}''' >> /etc/udev/rules.d/51-kinect.rules"
# ATTR{product}=="Xbox NUI Camera"
sudo su root -c "echo '''SUBSYSTEM==${dqt}usb${dqt}, ATTR{idVendor}==${dqt}045e${dqt}, ATTR{idProduct}==${dqt}02ae${dqt}, MODE=${dqt}0666${dqt}''' >> /etc/udev/rules.d/51-kinect.rules"
# ATTR{product}=="Xbox NUI Motor"
sudo su root -c "echo '''SUBSYSTEM==${dqt}usb${dqt}, ATTR{idVendor}==${dqt}045e${dqt}, ATTR{idProduct}==${dqt}02c2${dqt}, MODE=${dqt}0666${dqt}''' >> /etc/udev/rules.d/51-kinect.rules"
# ATTR{product}=="Xbox NUI Motor"
sudo su root -c "echo '''SUBSYSTEM==${dqt}usb${dqt}, ATTR{idVendor}==${dqt}045e${dqt}, ATTR{idProduct}==${dqt}02be${dqt}, MODE=${dqt}0666${dqt}''' >> /etc/udev/rules.d/51-kinect.rules"
# ATTR{product}=="Xbox NUI Motor"
sudo su root -c "echo '''SUBSYSTEM==${dqt}usb${dqt}, ATTR{idVendor}==${dqt}045e${dqt}, ATTR{idProduct}==${dqt}02bf${dqt}, MODE=${dqt}0666${dqt}''' >> /etc/udev/rules.d/51-kinect.rules"

sudo freenect-glview


