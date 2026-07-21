#!/bin/bash
mkdir -p "$HOME/Downloads/fn"
cd "$HOME/Downloads/fn"
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.4.0/JetBrainsMono.zip
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.4.0/NerdFontsSymbolsOnly.zip
unzip JetBrainsMono.zip
rm README.md
unzip NerdFontsSymbolsOnly.zip
mkdir -p $HOME/.local/share/fonts
mv *.ttf $HOME/.local/share/fonts
fc-cache -f -v
rm ./*
