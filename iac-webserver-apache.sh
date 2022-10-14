#!/bin/bash

echo $'\n'
echo -e '\033[01;32m####### -1 Verificando atualizações disponiveis #######\033[00;37m'
echo $'\n'
sudo apt update

echo $'\n'
echo -e '\033[01;32m####### -2 Instalando novas atualizações #######\033[00;37m'
echo $'\n'
sudo apt upgrade -y

echo $'\n'
echo -e '\033[01;32m####### -3 Instalando servidor web Apache2 #######\033[00;37m'
echo $'\n'
sudo apt install apache2 -y

echo $'\n'
echo -e '\033[01;32m####### -4 Instalando Unzip #######\033[00;37m'
echo $'\n'
sudo apt install unzip

echo $'\n'
echo -e '\033[01;32m####### -5 Acessando diretório /tmp #######\033[00;37m'
echo $'\n'
cd /tmp/
pwd
echo $'\n'
echo -e '\033[01;32m####### -6 Realizando download da aplicação Web #######\033[00;37m'
echo $'\n'
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo $'\n'
echo -e '\033[01;32m####### -7 Descompactando aplicação no diretório /tmp #######\033[00;37m'
echo $'\n'
unzip -o -v main.zip

echo $'\n'
echo -e '\033[01;32m####### -8 Configurando aplicação Web #######\033[00;37m'
echo $'\n'
cd linux-site-dio-main
cp * -r -v /var/www/html

echo $'\n'
host=$(hostname -I)
echo -e 'Aplicação disponivel no endereço: \033[01;32mhttp://'$host'\033[00;37m'

echo $'\n'
echo -e '\033[01;32m####### PROCESSO FINALIZADO #######\033[00;37m'
echo $'\n'
