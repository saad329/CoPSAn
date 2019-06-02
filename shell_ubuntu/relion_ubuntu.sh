#! /bin/bash
echo "Downloading"
git clone https://github.com/3dem/relion.git

#DEPENDENCIES:

sudo apt install cmake build-essential mpi-default-bin mpi-default-dev libfftw3-dev
sudo apt install cmake
sudo apt install git
#INSTALLATION:
cd relion
mkdir build
cd build
cmake -DCMAKE_INSTALL_PREFIX=/where/to/install/flag -DGUI=OFF
make -j4
make install


#updating
cd relion
git pull
cd build
make -j4
sudo maake install
