#!/bin/bash

# Usamos UFT-8 para poder leer los emojis
if [[ "$LANG" != *UTF-8 ]]; then
  export LANG="es_ES.UTF-8"
  export LC_ALL="es_ES.UTF-8"
fi

# Cargar funciones auxiliares
source "$(dirname "$0")/helpers.sh"

# Variables base
SCRIPT_DIR="$(dirname "$0")"
MANUAL_DIR="$SCRIPT_DIR/../manual"

# Banner de bienvenida
print_banner
log "Bienvenido a KósmOS, Capitán. Escribe 'help' para ver los comandos galácticos."

# Bucle interactivo
while true; do
  echo -n "victor@kosmos > "
  read -ra input
  comando="${input[0]}"
  argumentos=("${input[@]:1}")

  case "$comando" in
    orbita)
      log "🪐 Archivos en órbita:"
      ls -1
      ;;

    estrella)
      if [ -z "${argumentos[0]}" ]; then
        log "⚠️  Uso: estrella <nombre_archivo>"
      else
        touch "${argumentos[0]}"
        log "✨ Archivo '${argumentos[0]}' creado."
      fi
      ;;

    agujero)
      if [ -z "${argumentos[0]}" ]; then
        log "⚠️  Uso: agujero <nombre_archivo>"
      else
        rm -f "${argumentos[0]}"
        log "🕳️ Archivo '${argumentos[0]}' eliminado."
      fi
      ;;

    mision)
      log "🚀 Procesos activos:"
      ps aux | head -10
      ;;

    hipersalto)
      if [ -z "${argumentos[0]}" ]; then
        log "⚠️  Uso: hipersalto <ruta>"
      else
        cd "${argumentos[0]}" 2>/dev/null && log "🌌 Viajaste a $(pwd)" || log "❌ No se pudo entrar en esa galaxia."
      fi
      ;;

    about)
      lynx "$MANUAL_DIR/about.html"
      ;;

    help)
      lynx "$MANUAL_DIR/comandos.html"
      ;;

    fecha)
      log "📆 Fecha actual: $(date)"
      ;;

    pid)
      log "🧬 PID de KósmOS: $$"
      ;;

    lanzar-proceso)
      sleep 1000 & 
      echo $! > /tmp/proceso_kosmos.pid
      log "🛰️ Proceso hijo lanzado con PID: $(cat /tmp/proceso_kosmos.pid)"
      ;;

    matar-proceso)
      if [ -f /tmp/proceso_kosmos.pid ]; then
        pid_kosmos=$(cat /tmp/proceso_kosmos.pid)
        kill -9 "$pid_kosmos" && log "☠️ Proceso $pid_kosmos exterminado." || log "❌ No se pudo matar el proceso."
        rm /tmp/proceso_kosmos.pid
      else
        log "⚠️ No hay proceso hijo activo."
      fi
      ;;

    salir | exit)
      log "🛸 Cerrando sesión en KósmOS. Hasta la próxima, comandante."
      break
      ;;

    ahorcado)
      python3 "$SCRIPT_DIR/ahorcado.py"
      ;;

    volar)
      bash "$SCRIPT_DIR/volar.sh"
      ;;

    launch-desktop-ui)
      python3 "$SCRIPT_DIR/../desktop/desktop_ui.py"
      ;;

    *)
      if command -v "$comando" &> /dev/null; then
        "${input[@]}"
      else
        log "❓ Comando desconocido: '$comando'. Escribe 'help' para ver los comandos disponibles."
      fi
      ;;
  esac
done
