#!/bin/bash
# Alacritty
mkdir -p $HOME/.config/alacritty
mv ./alacritty.toml ./TokyoNight.toml $HOME/.config/alacritty/

cat << 'EOF' >> ~/.profile
if [[ -z "$DISPLAY" ]] && [[ $(tty) = /dev/tty1 ]]; then
    exec startx
fi
EOF

echo "feh --bg-scale $HOME/Custom/wallpapers/space_guards.jpg &" >> ~/.xinitrc
echo "exec dwm" >> ~/.xinitrc

