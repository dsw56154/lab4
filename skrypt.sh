#!/bin/bash
SCRIPT_NAME=$(basename "$0")
if [ "$1" == "--date" ]; then
  date
elif [ "$1" == "--logs" ]; then
  for i in $(seq 1 100); do
    filename="log${i}.txt"
    echo "Nazwa pliku: ${filename}" > "$filename"
    echo "Nazwa skryptu: ${SCRIPT_NAME}" >> "$filename"
    echo "Data utworzenia: $(date)" >> "$filename"
    echo "Utworzono plik: ${filename}"
  done
fi