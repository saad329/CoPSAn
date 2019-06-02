#! /bin/bash
echo "downloading"
git clone https://github.com/URVnutrigenomica-CTNS/DecoyFinder.git
#dependecies
sudo apt-get install openbabel
sudo apt-get install python3-pyside
sudo apt install python3-pyqt4
#installation
sudo python decoy_finder.py  install

