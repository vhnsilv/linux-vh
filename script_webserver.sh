#!/bin/bash

echo "Iniciando instalação do servidor WEB..."
echo "Iniciando atualizações do sistema..."
apt update
apt upgrade -y

echo "Instalando servidor apache..."

apt install apache2 -y

echo "Instalando unzip..."

apt install unzip -y

echo "Baixando aplicação WEB..."

wget -P /tmp https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "Inserindo aplicação..."

unzip /tmp/main
