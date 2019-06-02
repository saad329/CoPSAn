#! /bin/bash
echo"downloading"
git clone https://github.com/TangYuan-Liu/Nepre

#Dependencies
sudo apt-get install python2.7
sudo pip install numpy 
 pip install tqdm

#install
python Nepre_EngMatrix.py install

