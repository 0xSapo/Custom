#!/bin/bash
wget https://github.com/neovim/neovim/releases/download/stable/nvim-linux-x86_64.appimage
chmod 755 nvim-linux-x86_64.appimage
sudo mv nvim-linux-x86_64.appimage /usr/bin/nvim
git clone https://github.com/NvChad/starter ~/.config/nvim

