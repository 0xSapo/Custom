#!/bin/bash
# Sway
mkdir -p $HOME/.config/sway
cp ../Dotfiles/Sway/config.in $HOME/.config/sway/

# Alacritty
echo "[5] Installing Dots"
echo "    Dots Alacritty"
cp -r ../../Dotfiles/alacritty/  $HOME/.config/
