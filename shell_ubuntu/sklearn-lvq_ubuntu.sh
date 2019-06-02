#! /bin/bash
echo "downloading"
git clone https://github.com/MrNuggelz/sklearn-lvq.git
 
#Dependencies
pip install numpy scipy
pip install sklearn-lvq
pip install matplotlib
pip install nose
pip install sphinx pillow sphinx-gallery sphinx_rtd_theme metric_learn


#installation
python setup.py  install

