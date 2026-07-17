#!/bin/bash
# cargo
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
source ~/.cargo/env
# yazi
cargo install yazi-build
DIR="$HOME/Downloads"
mkdir -p "$DIR/trust"
# Eww
git clone https://github.com/elkowar/eww "$DIR/eww"
cd "$DIR/eww"
TMPDIR="$DIR/trust" cargo build --release --no-default-features --features x11
# dwm
git clone https://git.suckless.org/dwm "$DIR/dwm"
cd "$DIR/dwm"
sudo make clean install
cd - > /dev/null
