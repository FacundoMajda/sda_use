#!/bin/bash

# Directorio raíz donde buscar
ROOT_DIR="./"

# Encuentra todos los archivos .html y .js recursivamente
find "$ROOT_DIR" -type f \( -iname "*.html" -o -iname "*.js" \) | while read -r file; do
  echo "Procesando: $file"

  # Reemplazar solo las tildes por sus variantes sin tilde
  sed -i 's/á/a/g; s/é/e/g; s/í/i/g; s/ó/o/g; s/ú/u/g; s/Á/A/g; s/É/E/g; s/Í/I/g; s/Ó/O/g; s/Ú/U/g' "$file"
done

echo "Proceso completado."