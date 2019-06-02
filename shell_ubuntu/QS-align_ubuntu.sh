#10 /bin/bash
sudo apt install git 
echo "Downloading"
git clone https://github.com/lafita/qs-align.git

cd qs-align/
echo "Downlaoding jar file"
wget https://github.com/lafita/qs-align/releases/download/1.1/qs-align_1.1.jar

echo "Installing java"
sudo apt install openjdk-8-jre

java -jar qs-align_1.1.jar -h

