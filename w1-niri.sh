#!/bin/bash
set -e

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
source ~/.cargo/env
echo "[*] Instalando niri..."

# Instalar dependencias
echo "[+] Instalando dependencias..."
sudo apt update
sudo apt install -y \
    build-essential \
    libwayland-dev \
    libxkbcommon-dev \
    libpango1.0-dev \
    libpipewire-0.3-common \ 
    libpipewire-0.3-dev \
    
# Crear directorio temporal
TMPDIR=$(mktemp -d)
trap "rm -rf $TMPDIR" EXIT

cd "$TMPDIR"

# Clonar y compilar
echo "[+] Clonando repositorio..."
git clone https://github.com/YaLTeR/niri.git
cd niri

echo "[+] Compilando (esto puede tomar varios minutos)..."
cargo build --release

# Instalar binario
echo "[+] Instalando binario..."
sudo cp target/release/niri /usr/local/bin/

# Crear entrada de sesión
echo "[+] Creando entrada de sesión..."
sudo tee /usr/share/wayland-sessions/niri.desktop > /dev/null <<'EOF'
[Desktop Entry]
Type=Application
Name=Niri
Exec=/usr/local/bin/niri
EOF

# Crear directorio de configuración
echo "[+] Creando directorio de configuración..."
mkdir -p ~/.config/niri

# Crear archivo de configuración base si no existe
if [ ! -f ~/.config/niri/config.kdl ]; then
    cat > ~/.config/niri/config.kdl <<'EOF'
// Niri configuration file

input {
    keyboard {
        xkb {
            layout "us"
        }
    }

    mouse {
        accel-speed 0.0
    }
}

output "HDMI-1" {
    mode "1920x1080@60"
    position x=0 y=0
}

layout "rnote" {}

binds {
    Super+Q { close-window; }
    Super+Return { spawn "alacritty"; }
    Super+D { spawn "rofi" "-show" "drun"; }
}

prefer-no-csd
EOF
    echo "[+] Configuración base creada en ~/.config/niri/config.kdl"
fi

echo "[✓] Instalación completada"
echo "[*] Próximos pasos:"
echo "    - Editar ~/.config/niri/config.kdl"
echo "    - Seleccionar 'Niri' al iniciar sesión (pantalla de login)"
echo "    - Reiniciar sesión"
