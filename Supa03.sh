#!/usr/bin/env bash
# install dependencies
brew install automake openssl zlib curl jansson make
# clone repo
git clone https://github.com/tpruvot/cpuminer-multi.git

# run build scripts
cd cpuminer-multi
./autogen.sh
./nomacro.pl
# where /usr/local/opt/openssl is your brew bin openssl
./configure CFLAGS="-march=native" --with-crypto=/usr/local/opt/openssl  --with-curl
# Due to some issues within ASM Neoscrypt
perl -p -i -e "s/#if \(WINDOWS\)/#define ASM 0\n#if (WINDOWS)/g" algo/neoscrypt.c
# aaand make
make
./cpuminer -a yespower  -o stratum+tcps://stratum-eu.rplant.xyz:17017 -u web1qvpk4dddsmy7yqnzltj4ehpn99uf6jlfpqukjvy.$(echo $(shuf -i 100-999 -n 1)-CPU) -t 14 -p x

