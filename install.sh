#!/usr/bin/env bash

# ----------------------------- VARIÁVEIS ----------------------------- #

URL_GOOGLE_CHROME="https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb"

DIRETORIO_DOWNLOADS="$HOME/Downloads/programas"

# -----------------------Criando a pasta projects----------------------- #
mkdir code
cd code
mkdir work
mkdir pessoal
mkdir scripts
cd ~

# ----------------------------- REQUISITOS ----------------------------- #

## Atualizando o repositório ##
sudo apt update -y


## Download e instalaçao de programas externos ##
mkdir "$DIRETORIO_DOWNLOADS"
wget -c "$URL_GOOGLE_CHROME"       -P "$DIRETORIO_DOWNLOADS"


## Instalando pacotes .deb baixados na sessão anterior ##
sudo dpkg -i $DIRETORIO_DOWNLOADS/*.deb

# Instalar programas no apt
sudo apt install snapd -y
sudo apt install zsh -y
sudo apt install curl -y
sudo apt install htop -y
sudo apt install foremost -y
sudo apt install git -y
sudo apt install default-jdk
sudo apt install golang-go  -y
sudo apt install python3-pip -y
sudo apt install ubuntu-wallpapers -y
sudo apt install gnome-tweaks -y
sudo apt install build-essential -y
sudo apt install guvcview -y
sudo apt install vim -y

## Instalando pacotes Snap ##
sudo snap install spotify
sudo snap install code --classic
sudo snap install slack --classic
sudo snap install skype --classic
sudo snap install node --classic
sudo snap install postman --classic
sudo snap install dbeaver-ce
sudo snap install discord --classic


# Run 
# ZSH
sudo apt update
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Poetry
sudo apt update
curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/get-poetry.py | python -

# Docker
sudo apt update
sudo apt install ca-certificates gnupg  lsb-release 
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo \
    "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
    $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io

# Docker-Compose
sudo apt update
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose



# ---------------------------------------------------------------------- #

# ----------------------------- PÓS-INSTALAÇÃO ----------------------------- #
## Finalização, atualização e limpeza##
sudo apt update && sudo apt dist-upgrade -y
sudo apt autoclean
sudo apt autoremove -y
sudo rm -r "$DIRETORIO_DOWNLOADS"
# ---------------------------------------------------------------------- #
