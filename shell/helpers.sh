#!/bin/bash

COLOR_MAGENTA="\033[1;35m"
COLOR_RESET="\033[0m"

log() {
  printf "${COLOR_MAGENTA}%b${COLOR_RESET}\n" "$1"
}


print_banner() {
  echo -e "\033[1;34m"
  echo "╔═══════════════════════════════════════╗"
  echo "║     🚀 KósmOS Shell Galáctica 🚀      ║"
  echo "╚═══════════════════════════════════════╝"
  echo -e "\033[0m"
}
