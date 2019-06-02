#! /bin/bash
echo "downloading"
git clone https://github.com/bleutner/RStoolbox.git
# dependencies

#to install first download r base
echo "installing"
sudo add-apt-repository 'deb https://cloud.r-project.org/bin/linux/ubuntu bionic-cran35/'
wget https://travis-ci.org/bleutner/RStoolbox
wget https://CRAN.R-project.org/package=RStoolbox
wget https://codecov.io/gh/bleutner/RStoolbox

sudo apt install r-base

sudo -i R

install.packages("RStoolbox")

