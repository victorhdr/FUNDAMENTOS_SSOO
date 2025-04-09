#!/bin/bash

source "$(dirname "$0")/helpers.sh"

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
      lynx ./manual/about.html
      ;;

    help)
      lynx ./manual/comandos.html
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

    # Función para el juego de Ahorcado
    ahorcado)
      python3 ./shell/ahorcado.py
      ;;

    # Función para la animación de vuelo
    volar)
      bash ./shell/volar.sh
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
