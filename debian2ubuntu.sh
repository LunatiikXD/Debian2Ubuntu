#!/bin/bash
echo -e "\e[1m================================================="
echo "Welcome to the Debian2Ubuntu,"
echo "Debian will be turned into Ubuntu,"
echo "you can grab a cup of coffee and wait."
echo -e "\e[1m================================================="
sudo apt-get install curl
curl https://raw.githubusercontent.com/LunatiikXD/weirdscripts/master/ubuntusources.txt | sudo tee /etc/apt/sources.list
sudo apt update
sudo apt-get dist-upgrade
sudo apt --fix-broken install
sudo apt-get purge ghostscript libgs9 libgs9-common python3-cupshelpers
sudo apt-get install ubuntu-desktop
wget -N https://raw.githubusercontent.com/CollabVM-Retards/dotfiles/master/.bashrc
exec bash
echo "Enjoy your VM"
