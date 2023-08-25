#!/bin/bash


# Defina o nome do usuário
usuario="202112160022@ifto.local"

# Lista recursivamente todos os arquivos na pasta /home do usuário
find "/home/$usuario" -type f
