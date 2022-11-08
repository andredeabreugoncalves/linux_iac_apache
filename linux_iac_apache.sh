#!/bin/bash

echo "Atualizando o servidor..."
apt-get update
apt-get upgrade -y
apt-get install apache2 -y
apt-get install unzip -y


echo "Baixando e copiando os arquivos da aplicação..."

cd /tmp
wget https://github.com/andredeabreugoncalves/pca-fabrica-software/archive/refs/heads/main.zip
unzip main.zip
cd  pca-fabrica-software-main
cp -R * /var/www/html/
