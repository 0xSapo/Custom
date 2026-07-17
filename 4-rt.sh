#!/bin/bash
# cargo
DIR="$HOME/Downloads"
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
source ~/.cargo/env
# Eww
git clone https://github.com/elkowar/eww "$DIR/eww"
cd "$DIR/eww"
TMPDIR="$DIR/trust" cargo build --release --no-default-features --features x11
# dwm
git clone https://github.com/0xSapo/sdwm "$DIR/sdwm"
cd "$DIR/sdwm"
sudo make clean install
cd - > /dev/null
