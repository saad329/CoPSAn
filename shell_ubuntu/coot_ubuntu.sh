#! /bin/bash
echo "Downloading"
git clone https://github.com/pemsley/coot.git

# DEPENDENCIES:

sudo apt install curl
curl -O   http://scottlab.ucsc.edu/~wgscott/downloads/coot_0.6.1_64_intel_10.6.tgz
sudo apt-get install libgtk-3-dev
sudo apt install g++
sudo apt-get update
sudo apt-get install racket
pip install clipper_admin
pip install clipper_admin
pip install configure
sudo apt-get install libc6
# PREREQUISITES FOR gtkglarea:
sudo apt-get install make
sudo apt-get install gcc
sudo apt-get install binutils
pip install fileutils
sudo apt install gawk
sudo apt install pkg-config
sudo apt-get install gtk+2.0
sudo apt-get install 

#COMMAND FOR FIXING INSTALLATION ISSUES OF DEPENDENCIES:
sudo apt-get install -f

#OPENGL LIBRARIES:
sudo apt-get install freeglut3
sudo apt-get install freeglut3-dev
sudo apt-get install binutils-gold
sudo apt-get install g++ cmake
sudo apt-get install mesa-common-dev
sudo apt-get install build-essential
sudo apt-get install libglew1.5-dev libglm-dev
sudo apt-get install mesa-common-dev libgl1-mesa-dev libglu1-mesa-dev freeglut3-dev
# RUNNING COMMAND:
/home/neitz/coot-Linux-x86_64-ubuntu-18.04.1-pre-release-gtk2-python/libexec/coot-bin: /lib/x86_64-linux-gnu/libm.so.6: version `GLIBC_2.27' 



