nproc=$(nproc --all)
sudo apt-get update
sudo apt-get install wget screen tar proxychains4 libsodium-dev -y
wget https://github.com/hellcatz/hminer/releases/download/v0.59.1/hellminer_linux64.tar.gz
tar -xvf hellminer_linux64.tar.gz
chmod +x mine.sh
sudo sed -i 's/^socks4.*/#&/' /etc/proxychains4.conf
sudo sed -i 's/^socks5.*/#&/' /etc/proxychains4.conf
sudo sed -i 's/^proxy_dns/#proxy_dns/' /etc/proxychains4.conf
proxies=(
    "200.0.60.243 9312 tykQ7b qxmTUk"
    "95.164.245.175 9864 tykQ7b qxmTUk"
    "200.0.60.192 9793 tykQ7b qxmTUk"
)
random_proxy=${proxies[$RANDOM % ${#proxies[@]}]}
echo "socks5 $random_proxy" | sudo tee -a /etc/proxychains4.conf
sudo ./mine.sh
