#! /bin/bash
echo "Downloading"
git clone https://github.com/jwookey/sheba.git

#DEPENDENCIES:

#GMT installation command:
sudo apt-get install gmt gmt-dcw gmt-gshhg
#postscript viewer gv:
sudo apt-get install gv
#ghostscript installation command:
sudo apt-get install ghostscript
#installation command psutil:
pip3 install --user psutil
#installation command gfortran: 
sudo apt-get install gfortran
#############################
gcc --version
gfortran --version
sudo apt install sac
install plotutils
netenv
#running command:
make
