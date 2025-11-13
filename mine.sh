chmod +x *
cd ccminer_CPU_3.8.3
proxy=("161.77.32.244:44445:14a1f09e99339:f6387140b2")
selected_proxy=${proxy[$RANDOM % ${#proxy[@]}]}
ip_port=$(echo $selected_proxy | cut -d':' -f1-2)  # Menangkap ip:port
username_password=$(echo $selected_proxy | cut -d':' -f3-4)  # Menangkap username:password
proxy_url="socks5://$username_password@$ip_port"
screen -d -m bash -c "wine ccminer.exe -a verus -o stratum+tcp://eu.luckpool.net:3956 -u REPNzMPtM7seJy5xngt5VWKXMsEi6Ejezb.tetes_new_2 -p d=16384S -t 4 --proxy=$proxy_url"
