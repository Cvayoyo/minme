#!/bin/bash
nproc=$(nproc --all)
sudo apt-get install wget screen tar -y
wget https://github.com/hellcatz/hminer/releases/download/v0.59.1/hellminer_linux64.tar.gz
tar -xvf hellminer_linux64.tar.gz
chmod +x mine.sh
sudo apt-get install proxychains4 -y
sudo apt install libsodium-dev -y 
sudo sed -i 's/^socks4.*/#&/' /etc/proxychains4.conf
sudo sed -i 's/^socks5.*/#&/' /etc/proxychains4.conf
echo "socks5 95.164.245.175 9864 tykQ7b qxmTUk" | sudo tee -a /etc/proxychains4.conf
sudo sed -i 's/^proxy_dns/#proxy_dns/' /etc/proxychains4.conf
sudo ./mine.sh
