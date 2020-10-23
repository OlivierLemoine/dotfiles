#!bin/sh
#Update
sudo apt update
sudo apt upgrade

cp -r . ~/

sudo apt install git python3.7 python3-pip nvim i3

#Fish
echo 'deb http://download.opensuse.org/repositories/shells:/fish:/release:/3/Debian_10/ /' | sudo tee /etc/apt/sources.list.d/shells:fish:release:3.list
curl -fsSL https://download.opensuse.org/repositories/shells:fish:release:3/Debian_10/Release.key | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/shells:fish:release:3.gpg > /dev/null
sudo apt update
sudo apt install fish

#Powerline
sudo -u $SUDO_USER pip3 install powerline-status 

#Powerline Font
cd
git clone https://github.com/powerline/fonts
cd fonts
./install.sh
cd ..
rm -rf fonts
