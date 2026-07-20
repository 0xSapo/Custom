#!/bin/bash

set -e

########
# RUST #
########

echo "[*] Instalando rust..."
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
source ~/.cargo/env


########
# NIRI #
########

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

