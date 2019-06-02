#! /bin/bash
echo "Downloading"
wget https://github.com/cctbx/cctbx_project.git

#DEPENDENCIES:

sudo apt-get install python-pip
#Installation:
python bootstrap.py
