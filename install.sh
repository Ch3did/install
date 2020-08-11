#!/usr/bin/env bash

# ----------------------------- VARIÁVEIS ----------------------------- #

URL_GOOGLE_CHROME="https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb"
URL_DISCORD="https://dl.discordapp.net/apps/linux/0.0.11/discord-0.0.11.deb"

DIRETORIO_DOWNLOADS="$HOME/Downloads/programas"

# -----------------------Criando a pasta projects----------------------- #
mkdir projects
cd projects
mkdir bash
mkdir golang
mkdir python
cd ~

# ----------------------------- REQUISITOS ----------------------------- #
## Removendo travas eventuais do apt ##
sudo rm /var/lib/dpkg/lock-frontend
sudo rm /var/cache/apt/archives/lock

## Adicionando/Confirmando arquitetura de 32 bits ##
sudo dpkg --add-architecture i386

## Atualizando o repositório ##
sudo apt update -y

# ----------------------------- EXECUÇÃO ----------------------------- #
## Atualizando o repositório depois da adição de novos repositórios ##
sudo apt update -y

## Download e instalaçao de programas externos ##
mkdir "$DIRETORIO_DOWNLOADS"
wget -c "$URL_GOOGLE_CHROME"       -P "$DIRETORIO_DOWNLOADS"
wget -c "$URL_DISCORD"             -P "$DIRETORIO_DOWNLOADS"


## Instalando pacotes .deb baixados na sessão anterior ##
sudo dpkg -i $DIRETORIO_DOWNLOADS/*.deb

# Instalar programas no apt
sudo apt-get install snapd -y
sudo apt-get install htop -y
sudo apt-get install foremost -y
sudo apt-get install git -y
sudo apt-get install golang-go  -y
sudo apt-get install python3-pip -y
sudo apt-get install mysql-server -y
sudo apt-get install mysql-client 
sudo apt-get install ubuntu-wallpapers
sudo apt install gnome-tweaks -y


## Instalando pacotes Snap ##
sudo snap install spotify
sudo snap install code
sudo snap install slack --classic
sudo snap install skype --classic
sudo snap install photogimp

# ---------------------------------------------------------------------- #

# ----------------------------- PÓS-INSTALAÇÃO ----------------------------- #
## Finalização, atualização e limpeza##
sudo apt update && sudo apt dist-upgrade -y
sudo apt autoclean
sudo apt autoremove -y
# ---------------------------------------------------------------------- #

# PARA O MYSQL WORBENCH: https://www.youtube.com/watch?v=122iQfGsljA #