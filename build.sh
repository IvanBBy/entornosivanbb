#!/bin/bash

# Verificar si w3.css ya está descargado
if [ ! -f w3.css ]; then
    echo "Descargando w3.css..."
    curl -O https://www.w3schools.com/w3css/4/w3.css || { echo "Error al descargar w3.css"; exit 1; }
fi

# Crear las páginas del sitio web
mkdir -p build
cp -r src/* build/
echo "Sitio web construido correctamente."
