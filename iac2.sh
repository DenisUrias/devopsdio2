#!/bin/bash

echo "Atualizando o servidor..."
echo " "
apt update
apt upgrade -y

echo "Instalando aplicações..."
echo " "
apt install apache2 -y
apt install unzip -y

echo "Baixando e provisionando o site..."
echo " "
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cp -R linux-site-dio-main/* /var/www/html

echo "Servidor WEB provisionado!"