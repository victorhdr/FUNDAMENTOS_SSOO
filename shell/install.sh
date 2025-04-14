#!/bin/bash

source helpers.sh

print_banner
log "Iniciando instalación de KósmOS..."

# Verificar que el sistema es compatible (Linux o MacOS)
OS_TYPE=$(uname)

if [[ "$OS_TYPE" != "Linux" && "$OS_TYPE" != "Darwin" ]]; then
  log "❌ Sistema operativo no compatible: $OS_TYPE"
  exit 1
fi

INSTALL_DIR="$HOME/kosmos"
mkdir -p "$INSTALL_DIR"

# Copiar archivos del manual (asegúrate de estar en la carpeta manual)
cp index.html comandos.html features.html contact.html about.html style.css "$INSTALL_DIR"

# Verificar si lynx está instalado
if ! command -v lynx &> /dev/null; then
  log "Lynx no está instalado. Intentando instalarlo..."

  if [[ "$OS_TYPE" == "Linux" ]]; then
    if command -v apt &> /dev/null; then
      sudo apt update
      sudo apt install -y lynx
    elif command -v dnf &> /dev/null; then
      sudo dnf install -y lynx
    elif command -v yum &> /dev/null; then
      sudo yum install -y lynx
    elif command -v pacman &> /dev/null; then
      sudo pacman -Sy lynx
    else
      log "❌ No se detectó un gestor de paquetes compatible en Linux."
      exit 1
    fi
  elif [[ "$OS_TYPE" == "Darwin" ]]; then
    if command -v brew &> /dev/null; then
      brew install lynx
    else
      log "❌ No se encontró Homebrew en MacOS. Por favor, instala lynx manualmente."
      exit 1
    fi
  fi
else
  log "✅ Lynx ya está instalado."
fi

# Añadir alias
SHELL_RC="$HOME/.bashrc"
[[ $SHELL == *"zsh" ]] && SHELL_RC="$HOME/.zshrc"

if ! grep -q "alias kosmos=" "$SHELL_RC"; then
  echo "alias kosmos='lynx $INSTALL_DIR/index.html'" >> "$SHELL_RC"
  log "Alias 'kosmos' añadido a $SHELL_RC"
else
  log "Alias 'kosmos' ya existe en $SHELL_RC"
fi

# Crear acceso directo en el Escritorio
log "Creando acceso directo en el escritorio..."

RUTA_UI=$(realpath ./desktop/desktop_ui.py)
ESCRITORIO="$HOME/Escritorio"

cat > "$ESCRITORIO/KosmosUI.desktop" << EOF
[Desktop Entry]
Version=1.0
Name=KósmOS Desktop UI
Comment=Interfaz galáctica de tu sistema operativo personalizado
Exec=python3 $RUTA_UI
Icon=utilities-terminal
Terminal=false
Type=Application
Categories=Utility;
EOF

chmod +x "$ESCRITORIO/KosmosUI.desktop"
log "✅ Acceso directo creado: $ESCRITORIO/KosmosUI.desktop"

log "✅ Instalación completa. Ejecuta: source $SHELL_RC o reinicia tu terminal."
log "Luego simplemente escribe: kosmos"
