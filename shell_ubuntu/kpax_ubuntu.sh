#6 /bin/bash
echo "Downloading"
wget http://kpax.loria.fr/download/kpax-5.1.3-x64-mint18.3.tgz

echo "Extracting tar"
tar -xvf kpax-5.1.3-x64-mint18.3.tgz
echo "kpax-5.1.3-x64 installed"
cd kpax/
cd bin/


./kpax5.1.3.x64

