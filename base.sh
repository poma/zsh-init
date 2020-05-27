#!/bin/bash

apt-get update
apt-get upgrade -y
apt-get install -y ne tree git screen wget curl man-db telnet lsof zip unzip bash-completion traceroute htop iotop pv locate silversearcher-ag
apt-get install -y fzf bat

# apt-get upgrade -y tzdata
echo "Europe/Moscow" > /etc/timezone
ln -sf /usr/share/zoneinfo/Europe/Moscow /etc/localtime

cp ./files/ne.xml.conf /usr/share/ne/syntax/xml.jsf

rm -f /etc/update-motd.d/10-help-text
rm -f /etc/update-motd.d/51-cloudguest
rm -f /etc/update-motd.d/50-motd-news

cat ./files/id_rsa.pub >> ~/.ssh/authorized_keys
