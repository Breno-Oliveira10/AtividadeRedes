#!/bin/bash

# Definir nome do grupo
group="adms"

# Criar o grupo "adms"
groupadd "$group"

# Definir nomes de usuário
user1="usuario1"
user2="usuario2"

# Gerar senhas aleatórias em formato SHA512
pass1=$(openssl rand -base64 32 | openssl dgst -sha512 | cut -d' ' -f2)
pass2=$(openssl rand -base64 32 | openssl dgst -sha512 | cut -d' ' -f2)

# Adicionar os usuários
useradd -m -p "$pass1" "$user1"
useradd -m -p "$pass2" "$user2"

# Adicionar os usuários ao grupo "adms"
usermod -aG "$group" "$user1"
usermod -aG "$group" "$user2"

# Mostrar informações
echo "Grupo $group criado"
echo "Usuário $user1 adicionado ao grupo $group com senha: $pass1"
echo "Usuário $user2 adicionado ao grupo $group com senha: $pass2"
