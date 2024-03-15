#!/bin/bash

echo "Iniciando instalação do servidor WEB..."
echo "Iniciando atualizações do sistema..."
apt-get update
apt-get upgrade -y

echo "Instalando servidor apache..."

apt-get install apache2 -y

echo "Instalando unzip..."

apt-get install unzip -y

echo "Baixando aplicação WEB..."
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "Inserindo aplicação..."

unzip main.zip
cd linux-site-dio
cp -R * /var/www/html/

echo "Finalizado!!!"
