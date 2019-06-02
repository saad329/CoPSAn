#7 /bin/bash
echo "Downloading"
wget http://thales.cheme.cmu.edu/saspro/SAS-Pro.tar

echo "Extracting tar files"
tar -xvf SAS-Pro.tar

echo "Installing directories"
sudo apt install gfortran
cd SAS-Pro/
./make install

./make test

