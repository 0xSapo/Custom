#!/bin/bash

mkdir -p "$HOME/Downloads"

cd "$HOME/Downloads"
git clone https://gitlab.freedesktop.org/wlroots/wlroots/
cd wlroots
meson setup build
ninja -C build
sudo ninja -C build install

cd "$HOME/Downloads"
git clone https://github.com/swaywm/sway
cd sway
meson setup build
ninja -C build
sudo ninja -C build install
