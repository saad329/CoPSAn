#11 /bin/bash

sudo apt install git
echo "Downloading Biojava"
git clone https://github.com/biojava/biojava.git

echo "Installing java 8.0"
sudo apt install openjdk-8-jre

echo"Installing directories"

sudo apt install maven 

cd biojava/

cd biojava-modfinder/


mvn install





