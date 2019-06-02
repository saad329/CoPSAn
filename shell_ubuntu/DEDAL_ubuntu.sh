#9 /bin/bash

sudo apt install git

echo "Downloading"

git clone https://github.com/sysbio-curie/DeDaL

echo "Installation Java"
sudo apt install openjdk-8-jre

cd DeDaL/

sudo apt install ant

cd build/

java -jar DeDaL.jar



