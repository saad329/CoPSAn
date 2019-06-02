#! /bin/bash
echo "Downloading"
git clone https://github.com/schrodinger/pymol-open-source.git

#INSTALLATION:

sudo apt-get update -y
sudo apt-get install -y pymol

#INSTALLING DEPENDENCIES:
sudo apt-get install freeglut3-dev libglew-dev mesa-utils mesa-common-dev binutils libxml2-dev libmsgpack-dev python3-pip libglm-dev libpng-dev libfreetype6-dev git
pip install configure
#RUN COMMAND :

python setup.py install --prefix=~/programs/PyMOL/ --use-msgpackc=no
#location:creating /home/asad123ubuntoo/programs/PyMOL/bin
