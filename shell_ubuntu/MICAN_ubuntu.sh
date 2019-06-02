#5 /bin/bash
echo "Downlaoding"
wget http://landscape.tbp.cse.nagoya-u.ac.jp/MICAN/Download/mican_ver/mican_2018.04.05.tar.gz

sudo apt install gcc
 echo "Extracting tar file"
tar -xvf mican_2018.04.05.tar.gz

cd mican_2018.04.05/

make

make mican test/test1.1.pdb test/test1.2.pdb -a align.aln -o sup.pdb
