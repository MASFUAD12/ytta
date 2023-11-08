#!/bin/bash
rm -f install.sh
# ===================
export green='\033[0;32m'
export NC='\033[0m'
rm -f /root/main.sh
clear
echo ""
echo ""
echo -e "$green DOWNLOADING FILE SETUP......$NC"
sleep 2
sysctl -w net.ipv6.conf.all.disable_ipv6=1 
sysctl -w net.ipv6.conf.default.disable_ipv6=1 
apt update -y 
apt upgrade -y 
apt install -y bzip2 gzip coreutils screen curl unzip 
apt install lolcat -y 
apt install neofetch -y
wget https://raw.githubusercontent.com/rizkyckj/v1/main/main.sh && chmod +x main.sh && ./main.sh
rm -f /root/main.sh
