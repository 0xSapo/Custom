#!/bin/bash
echo "[+] Instalando dependencias..."
sudo apt-get update -y && sudo apt-get upgrade -y
# General dependencies
sudo apt install -y gcc \
                    alacritty \
                    build-essential \
                    clang \
                    curl \
                    curl \
                    extrepo \
                    feh \
                    fuse3 \
                    git \
                    libcairo2-dev \
                    libdbus-1-dev \
                    libdbusmenu-glib-dev \
                    libdbusmenu-gtk3-dev \
                    libdbusmenu-qt5-dev \
                    libdisplay-info-dev \
                    libegl1-mesa-dev \
                    libfontconfig1-dev \
                    libfuse3-dev \
                    libgbm-dev \
                    libgdk-pixbuf-2.0-dev \
                    libgtk-3-dev \
                    libinput-dev \
                    libpango1.0-dev \
                    libpango1.0-dev \
                    libpipewire-0.3-dev \
                    libseat-dev \
                    libssl-dev \
                    libsystemd-dev \
                    libudev-dev \
                    libwayland-dev \
                    libx11-dev \
                    libxft-dev \
                    libxinerama-dev \
                    libxkbcommon-dev \
                    pkg-config \
                    rofi \
                    suckless-tools \
                    unzip \
                    xorg \
                    xterm \
