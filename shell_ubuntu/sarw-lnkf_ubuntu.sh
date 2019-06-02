#! /bin/bash
echo"downloading"
git clone https://github.com/luciano-censoni/sarw-lnkf.git

#dependencies
sudo apt-get update
sudo apt-get install python3
sudo apt install python3-pip
sudo pip install numpy scipy
pip install matplotlib
sudo apt-get install python3-pil.imagetk


#install
python read-folding-rate.py  install





