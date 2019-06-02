#! /bin/bash
echo "Downloading"
git clone https://github.com/sknepneklab/SAMoS.git

#DEPENDENCIES:
#(Installing boost 1.48 )
sudo apt-get install libboost-all-dev
pip install numpy
sudo apt-get install python2.7
apt-get install gsl-doc-info gsl-doc-pdf gsl-ref-html gsl-ref-psdoc
#(Install GNU Scientific library (GSL) on Ubuntu)
sudo apt-get -y install cmake 
sudo apt-get install doxygen
git clone git://vtk.org/VTK.git
#DEPENDENCIES FOR CGAL LIBRARY:
sudo apt-get install libgmp-dev
sudo apt-get install libmpfr-dev
sudo apt-get install checkinstall

#Download and extract the source codE:
mkdir -p ~/src
cd ~/src
wget https://gforge.inria.fr/frs/download.php/file/34400/CGAL-4.5.1.tar.gz
tar xf CGAL-4.5.1.tar.gz
#RUNNING COMMAND:
./samos conf_file.conf
