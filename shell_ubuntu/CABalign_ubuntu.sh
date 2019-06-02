#3 /bin/bash

 wget http://www.pharm.kitasato-u.ac.jp/bmd/bmd/Download_files/CABalign/

echo "Extracting tar file"
CAB_align.tar.gz
cd Desktop/
tar -xvf CAB_align.tar.gz

echo "CAB-align installed"
echo " 
Running CAB-align"

cd CAB_align/
./CAalign
