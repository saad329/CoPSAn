#! /bin/bash
echo "Downloading"
git clone https://github.com/I2PC/scipion.git

#PRE-COMBINED BINARIES:

sudo apt-get install openjdk-8-jdk libopenmpi-dev openmpi-bin gfortran

#LIBRARIES INSTALLATION:

sudo apt-get install gcc g++ cmake openjdk-8-jdk libxft-dev libssl-dev libxext-dev 
#INSTALLATION:
./scipion install -j 5

