#!/bin/bash

source helpers.sh

print_banner
log "Iniciando desinstalación de KósmOS..."

INSTALL_DIR="$HOME/kosmos"

# Eliminar el directorio de instalación
if [ -d "$INSTALL_DIR" ]; then
  rm -rf "$INSTALL_DIR"
  log "🗑️ Carpeta $INSTALL_DIR eliminada."
else
  log "ℹ️ La carpeta $INSTALL_DIR no existe."
fi

# Quitar alias del archivo de configuración del shell
SHELL_RC="$HOME/.bashrc"
[[ $SHELL == *"zsh" ]] && SHELL_RC="$HOME/.zshrc"

if grep -q "alias kosmos=" "$SHELL_RC"; then
  sed -i '/alias kosmos=/d' "$SHELL_RC"
  log "🧹 Alias 'kosmos' eliminado de $SHELL_RC"
else
  log "ℹ️ No se encontró alias 'kosmos' en $SHELL_RC"
fi

log "✅ Desinstalación completada. Recarga tu terminal con: source $SHELL_RC"
