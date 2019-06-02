#! /bin/bash
echo "Downloading"
git clone https://github.com/swanandgore/rappertk.git

#Downloading link:
mordred.bioc.cam.ac.uk/~rapper/downloads/rapper_distrib_271003.tgz
#Dependencies:
sudo apt-get install gcc-4.8
wget http://ftp.gnu.org/gnu/make/
sudo add-apt-repository ppa:fkrull/deadsnakes
sudo apt-get install swig
pip install python 2.4
sudo apt update
sudo apt install libclipper-dev
#RUNNING COMMAND:
# to see the environment variables that need to be setup and set them:
make check 
#check if everything was compiled correctly:
make clobber make
# to run all testcases and verify that rappertk is running properly on your machine:
make tests
