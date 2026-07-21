#!/bin/bash

mkdir -p "$HOME/Downloads"

cd "$HOME/Downloads"

# Clone repositories
git clone https://github.com/swaywm/sway.git
cd sway
git clone https://gitlab.freedesktop.org/wlroots/wlroots.git subprojects/wlroots

# Build sway and wlroots
meson setup build/ -Dwrap_mode=default
ninja -C build/
