#!/bin/bash

SCRIPT_NAME=$(basename "$0")

show_help() {
  echo "Uzycie: $SCRIPT_NAME [opcja] [argument]"
  echo
  echo "Dostepne opcje:"
  echo "  --date, -d               Wyswietla date."
  echo "  --logs, -l [N]           Tworzy N plikw log.txt domyslnie 100."
  echo "  --error, -e [N]           Tworzy N plikw error.txt domyslnie 100."
  echo "  --help, -h               Wyswietla pomoc."
}

if [[ "$1" == "--help" || "$1" == "-h" ]]; then
  show_help
  exit 0

if [[ "$1" == "--date" || "$1" == "-d" ]]; then
  date
elif [[ "$1" == "--logs" || "$1" == "-l" ]]; then
  num=100
  if [ -n "$2" ] && [ "$2" -eq "$2" ] 2>/dev/null; then
    num=$2
  fi
  for i in $(seq 1 "$num"); do
  filename="log${i}.txt"
    echo "Nazwa pliku: ${filename}" > "$filename"
    echo "Nazwa skryptu: ${SCRIPT_NAME}" >> "$filename"
    echo "Data utworzenia: $(date)" >> "$filename"
    echo "Utworzono plik: ${filename}"
  done
elif [[ "$1" == "--error" || "$1" == "-e" ]]; then
  num=100
  if [ -n "$2" ] && [ "$2" -eq "$2" ] 2>/dev/null; then
    num=$2
  fi
  for i in $(seq 1 "$num"); do
  filename="error${i}.txt"
  done
fi