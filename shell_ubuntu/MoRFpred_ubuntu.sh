#! /bin/bash
echo "Downloading"
git clone https://github.com/roneshsharma/MoRFpred-plus.git

#DEPENDENCIES:
sudo apt-get install hhsuite 2.0.16
sudo apt-get install octave liboctave-dev
sudo apt-get install gawk

#RUNNING COMMAND:
#The input file demo_query_seq.txt will be processed and results will be saved to scores.txt file
sudo ./mp
#LibSVM MATLAB/OCTAVE binaries are required to be built using make file and its path to be included in “properties.txt’ file in MPP directory.
#FOR Installing HHblits (version 2.0.16 or later) and its databasesExtract the tar file and in “properties.txt’ file in MPP directory, line that identifies the directory path to HHblits database needs to be appropriately edited.
