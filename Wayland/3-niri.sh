#!/bin/bash
set -e
echo "[*] Instalando niri..."
mkdir -p "$HOME/Downloads/rtemp"
cd "$HOME/Downloads"

# Clonar y compilar
echo "[+] Clonando repositorio..."
git clone https://github.com/YaLTeR/niri.git
cd niri

echo "[+] Compilando (esto puede tomar varios minutos)..."
TMPDIR="$HOME/rtemp" cargo build --release

# Instalar binario
echo "[+] Instalando binario..."
sudo cp target/release/niri /usr/local/bin/

# Crear entrada de sesión
# echo "[+] Creando entrada de sesión..."
# sudo mkdir -p /usr/share/wayland-sessions/
# sudo tee /usr/share/wayland-sessions/niri.desktop > /dev/null <<'EOF'
# [Desktop Entry]
# Type=Application
# Name=Niri
# Exec=/usr/local/bin/niri
# EOF
#
# # Crear directorio de configuración
# echo "[+] Creando directorio de configuración..."
# mkdir -p ~/.config/niri
#
# # Crear archivo de configuración base si no existe
# if [ ! -f ~/.config/niri/config.kdl ]; then
#     cat > ~/.config/niri/config.kdl <<'EOF'
# // Niri configuration file
#
# input {
#     keyboard {
#         xkb {
#             layout "us"
#         }
#     }
#
#     mouse {
#         accel-speed 0.0
#     }
# }
#
# output "HDMI-1" {
#     mode "1920x1080@60"
#     position x=0 y=0
# }
#
# layout "rnote" {}
#
# binds {
#     Super+Q { close-window; }
#     Super+Return { spawn "alacritty"; }
#     Super+D { spawn "rofi" "-show" "drun"; }
# }
#
# prefer-no-csd
# EOF
#     echo "[+] Configuración base creada en ~/.config/niri/config.kdl"
# fi
