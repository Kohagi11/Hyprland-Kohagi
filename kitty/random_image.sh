#!/bin/bash

# Caminho da pasta com imagens
IMAGE_DIR="/home/kohagipc/img terminal/"

# Escolhe uma imagem aleatória
RANDOM_IMAGE=$(find "$IMAGE_DIR" -type f \( -iname '*.png' -o -iname '*.jpg' -o -iname '*.jpeg' \) | shuf -n 1)

# Mostra a imagem no canto esquerdo do terminal
if [ -n "$RANDOM_IMAGE" ]; then
    kitty +kitten icat --align left --place 40x20@0x0 "$RANDOM_IMAGE"
fi

# Aguarda um pouco para evitar sobreposição
sleep 0.1

# Mostra o fastfetch ou neofetch (escolha um)
fastfetch --logo-type 'kitty' --logo-width 35
