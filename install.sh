#!/bin/bash
nproc=$(nproc --all)
sudo apt-get install wget screen tar -y
wget https://github.com/hellcatz/hminer/releases/download/v0.59.1/hellminer_linux64.tar.gz
tar -xvf hellminer_linux64.tar.gz
chmod +x mine.sh
sudo ./mine.sh
