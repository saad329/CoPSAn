#! /bin/bash
echo "Downloading"
git clone https://github.com/donaldlab/OSPREY3.git

#prerequisites:

sudo apt-get install python2.7 python-pip openjdk-8-jre
pip install gcloud
pip install conda
pip2 install --user numpy
pip2 install --user osprey --no-index --use-wheel --find-link=wheelhouse

#also install Osprey python-3 beta1

#LINK FOR MINICONDA:
wget https://conda.io/miniconda.html

#RUNNING COMMAND:
./install.sh
