#! /bin/bash
echo "downloading"
git clone https://github.com/brgenzim/tmcrys

#dependencies
sudo apt update
sudo apt install r-base
sudo apt install r-cran-littler
#TMCrys was developed with R v3.4.1 ,so check its version
R --version
sudo apt install build-essential
sudo -i R
install.packages("xgboost", repos='http://cran.rstudio.com/')
install.packages("caret", repos='http://cran.rstudio.com/')
install.packages("docopt", repos='http://cran.rstudio.com/')
install.packages("protr", repos='http://cran.rstudio.com/')

sudo -i cpan install XML::LibXML
sudo -i cpan install Bio::Tools::Protparam
sudo -i cpan install Getopt::Std
sudo -i cpan install Statistics::R

#installing
#once download  and uncompressed Add $TMCRYS to the environmental variables with
export TMCRYS=/path/to/tmcrys/folder
