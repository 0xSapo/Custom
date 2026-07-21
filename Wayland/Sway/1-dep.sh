echo "[1] Installing Dependencies"
sudo apt-get update -y && sudo apt-get upgrade -y
sudo apt-get build-dep -y sway
sudo apt-get install -y alacritty \
                        bison \
                        build-essential \
                        cmake \
                        curl \
                        extrepo \
                        fuse3 \
                        git \
                        libwayland-dev \
                        libwayland-egl1 \
                        meson \
                        pkg-config \
                        pkgconf \
                        scdoc \
                        sway \
                        tree \
                        unzip \
                        wayland-protocols \
                        xterm
