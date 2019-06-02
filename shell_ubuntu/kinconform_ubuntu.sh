#! /bin/bash
echo "Downloading"
git clone https://github.com/dmcskim/kinconform.git

#DEPENDENCIES:
pip install NumPy
pip install --upgrade MDAnalysis
pip install Biocma

#DEPENDENCIES FOR FAMMER:

#DOWNLOADING FOR MAFFT:
wget https://mafft.cbrc.jp/alignment/software/mafft_7.427-1_amd64.deb 

#INSTALLATION FOR MAFFT:
sudo dpkg -i mafft_7.427-1_amd64.deb

#DOWNLOADING FOR HMMER:
wget http://eddylab.org/software/hmmer/hmmer.tar.gz 

#INSTALLATION FOR HMMER:
tar zxf hmmer.tar.gz
cd hmmer-3.2.1
./configure --prefix /your/install/path
make
make check
make install
sudo apt-get install mafft hmmer tm-align fasttree python-pip

#PYTHON LIBRARIES REQUIRED:
pip install Biopython
pip install biofrills
pip install biocma
pip install networkx
sudo apt-get install python2.7

#USAGE:
./kinconform XXX.pdb YYY.pdb ZZZ.pdb > a.out

#FOR RUNNING TEST STRUCTURE:
cd test
make all


