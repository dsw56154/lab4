#!/bin/bash

SCRIPT_NAME=$(basename "$0")

show_help() {
  echo "Uzycie: $SCRIPT_NAME [opcja] [argument]"
  echo
  echo "Dostepne opcje:"
  echo "  --date               Wyswietla date."
  echo "  --logs [N]           Tworzy N plikw log.txt domyslnie 100."
  echo "  --help               Wyswietla pomoc."
}

if [ "$1" == "--help" ]; then
  show_help
  exit 0

if [ "$1" == "--date" ]; then
  date
elif [ "$1" == "--logs" ]; then
  num=100
  if [ -n "$2" ] && [ "$2" -eq "$2" ] 2>/dev/null; then
    num=$2
  fi
  for i in $(seq 1 100); do
  filename="log${i}.txt"
    echo "Nazwa pliku: ${filename}" > "$filename"
    echo "Nazwa skryptu: ${SCRIPT_NAME}" >> "$filename"
    echo "Data utworzenia: $(date)" >> "$filename"
    echo "Utworzono plik: ${filename}"
  done
fi