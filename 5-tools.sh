#!/bin/bash
#Create Working directory
mkdir -p $HOME/Downloads/Tools
cd $HOME/Downloads/Tools

# Install Golang Latest
sudo rm -rf /usr/local/go
wget https://go.dev/dl/go1.26.5.linux-amd64.tar.gz
sudo tar -C /usr/local -xzf go1.26.5.linux-amd64.tar.gz
echo PATH="$PATH:/usr/local/go/bin" >> $HOME/.bashrc
source $HOME/.bashrc

# Caido
wget https://caido.download/releases/v0.57.1/caido-cli-v0.57.1-linux-x86_64.tar.gz
tar -xzvf caido-cli-v0.57.1-linux-x86_64.tar.gz
sudo mv caildo-cli /usr/bin/

# Librewolf
sudo extrepo enable librewolf && sudo extrepo update librewolf
sudo apt update && sudo apt install librewolf -y
