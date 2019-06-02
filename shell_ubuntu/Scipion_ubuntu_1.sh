#8 /bin/bash
sudo apt install git 
git clone https://github.com/I2PC/scipion.git

cd scipion/

sudo apt install openjdk-8-jre

sudo apt-get update 
sudo apt install python
sudo apt install python3
sudo apt install python-minimal
sudo apt install python-pip
sudo apt install python3-pip

pip install numpy

./scipion install
./scipion install.log 2>&1

./scipion help

