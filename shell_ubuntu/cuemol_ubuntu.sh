#! /bin/bash
echo "Downloading"
git clone https://github.com/CueMol/cuemol2.git

#DEPENDENCIES:

sudo apt install cvs

#DEEPENDENCIES FOR XULRUNNER:

sudo add-apt-repository ppa:ubuntu-mozilla-security/ppa
sudo apt install aptitude
sudo aptitude update
SUDO APTITUDE INSTALL XULRUNNER-1.9.1-DEV

#CVS REPOSITORY:

cvs -z3 -d:pserver:anonymous@cvs.sourceforge.jp:/cvsroot/cuemol co cuemol

