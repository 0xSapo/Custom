#!/bin/bash
# Alacritty
mkdir -p $HOME/.config/alacritty
mv ./alacritty.toml ./TokyoNight.toml $HOME/.config/alacritty/

cat << 'EOF' >> ~/.profile
if [[ -z "$DISPLAY" ]] && [[ $(tty) = /dev/tty1 ]]; then
    exec startx
fi
EOF

echo "exec dwm" >> ~/.xinitrc

