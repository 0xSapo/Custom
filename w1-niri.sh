#!/bin/bash
echo 'deb http://download.opensuse.org/repositories/home:/AvengeMedia:/danklinux/Debian_Unstable/ /' | sudo tee /etc/apt/sources.list.d/home:AvengeMedia:danklinux.list
curl -fsSL https://opensuse.org | gpg --dearmor | sudo tee /etc/trusted.gpg.d/home_AvengeMedia_danklinux.gpg > /dev/null
sudo apt update
sudo apt install niri
