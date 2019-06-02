#! /bin/bash
echo "downloading"
git clone https://github.com/woolfson-group/isambad.git
#dependecies
pip install numpy scipy
pip install matplotlib
pip install cython
sudo apt-get update -y
sudo apt-get install -y python-numpydoc
sudo apt-get install -y python-recommonmark
sudo apt-get install -y python-pypandoc
sudo apt-get install -y python-coverage
sudo apt-get install python3-bs4
sudo apt-get install python-deap
pip install networkx
#upgrede networkx
pip install --upgrade networkx
#for the SQLAlchemy ,add these 
sudo apt-get install mysql-server
sudo apt-get install mysql-client
sudo apt-get install libmysqlclient15-dev
#then
pip install MySql-Python
pip install SQLAlchemy
pip install requests

#installation
python setup.py  install
