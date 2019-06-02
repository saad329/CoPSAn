#! /bin/bash
echo "downloading"
got clone https://github.com/aqlaboratory/pnerf.git

#dependencies
pip install tensorflow
pip install tensorflow==2.0.0-alpha0

#installation
pip install pnerf.py

