#!/bin/bash
SCRIPT_NAME=$(basename "$0")
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