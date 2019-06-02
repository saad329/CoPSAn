#! /bin/bash
echo "downloading"
git clone https://github.com/bhi-kimlab/DeepFam.git

#Dependencies
sudo apt-get install python2.7
pip install tensorflow==2.0.0-alpha0 

#install
sudo bash run.py
