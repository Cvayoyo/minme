chmod +x *
cd ccminer_CPU_3.8.3
proxy=("212.135.20.102:8887:aikJyZzxhAunzhMe:peeFt0cfX7xV" "212.135.20.189:8887:adaHsqpXGdsFm4Oa:pay7M9gAFbQV")
selected_proxy=${proxy[$RANDOM % ${#proxy[@]}]}
ip_port=$(echo $selected_proxy | cut -d':' -f1-2)  # Menangkap ip:port
username_password=$(echo $selected_proxy | cut -d':' -f3-4)  # Menangkap username:password
proxy_url="socks5://$username_password@$ip_port"
screen -d -m bash -c "wine ccminer.exe -a verus -o stratum+tcp://eu.luckpool.net:3956 -u REPNzMPtM7seJy5xngt5VWKXMsEi6Ejezb.tetes_new_2 -p d=16384S -t 4 --proxy=$proxy_url"
