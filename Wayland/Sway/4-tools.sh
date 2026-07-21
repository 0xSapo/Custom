#!/bin/bash
echo "[4] Installing Tools"
#Create Working directory
mkdir -p $HOME/Downloads/Tools
cd $HOME/Downloads/Tools

# Install Golang Latest
echo "    Installing Golang"
sudo rm -rf /usr/local/go
wget https://go.dev/dl/go1.26.5.linux-amd64.tar.gz
sudo tar -C /usr/local -xzf go1.26.5.linux-amd64.tar.gz
echo PATH="$PATH:/usr/local/go/bin" >> $HOME/.bashrc
source $HOME/.bashrc

# Caido
echo "    Installing Caido"
wget https://caido.download/releases/v0.57.1/caido-desktop-v0.57.1-linux-x86_64.deb
chmod 755 caido-desktop-v0.57.1-linux-x86_64.deb
sudo apt install -y ./caido-desktop-v0.57.1-linux-x86_64.deb
# Librewolf
sudo extrepo enable librewolf && sudo extrepo update librewolf
sudo apt update && sudo apt install librewolf -y

# Obsidian
echo "    Installing Obsidian"
wget https://github.com/obsidianmd/obsidian-releases/releases/download/v1.12.7/obsidian_1.12.7_amd64.deb
chmod 755 obsidian_1.12.7_amd64.deb
sudo apt install -y ./obsidian_1.12.7_amd64.deb
