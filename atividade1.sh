#!/bin/bash

NUM_PASTAS=5000  # Defina o número de pastas que deseja criar
contador=1

while [ "$contador" -le "$NUM_PASTAS" ]; do
    nome_pasta=$(shuf -n 1 Aurelio.txt)  # Escolhe uma palavra aleatória do arquivo
    mkdir "$nome_pasta"
    chmod 555 "$nome_pasta"  # Define permissão apenas de leitura
    
    contador=$((contador + 1))
done
