#2 /bin/bash
cd Desktop/

sudo apt install git

echo "Downloading"
git clone https://github.com/realbigws/DeepAlign.git

sudo apt install g++

cd Desktop/
cd DeepAlign/

cd source_code/

make

cd
cd Desktop/
cd DeepAlign/
./DeepAlign



