#! /bin/bash
 
sudo apt install git
echo"Downloading"
git clone https://github.com/biotite-dev/biotite.git

sudo apt-get update 
sudo apt install python
sudo apt install python3
sudo apt install python-minimal
sudo apt install python-pip
sudo apt install python3-pip

cd biotite/

pip install requests
pip install numpy
pip install cython
pip install pypi
pip install msgpack
pip install mdtraj
pip install scipy
pip install matplotlib

python setup.py build
sudo python setup.py install

echo "Installation by another method"
pip install biotite

