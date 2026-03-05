#!/bin/bash

# Cores para o terminal
GREEN='\033[0;32m'
RED='\033[0;31m'
NC='\033[0m'

echo -e "${GREEN}=== Instalador Zanitos Lib ===${NC}"

# 1. Escolha do Método de Download
echo "Como deseja baixar os arquivos?"
echo "1) curl"
echo "2) wget"
read -p "Escolha (1-2): " DL_METHOD

DOWNLOAD_CMD=""
if [ "$DL_METHOD" == "1" ]; then
    DOWNLOAD_CMD="curl -LO"
else
    DOWNLOAD_CMD="wget -O"
fi

# Links Oficiais
URL_H="https://raw.githubusercontent.com"
URL_A="https://raw.githubusercontent.com"

# 2. Escolha do Ambiente
echo -e "\nOnde você deseja instalar?"
echo "1) Termux (Padrão)"
echo "2) Kali NetHunter (chroot/root)"
echo "3) VSCode / Desktop (Pasta Downloads)"
read -p "Escolha (1-3): " ENV_CHOICE

case $ENV_CHOICE in
    1)
        PREFIX="/data/data/com.termux/files/usr"
        INSTALL_H="$PREFIX/include"
        INSTALL_A="$PREFIX/lib"
        ;;
    2)
        PREFIX="/usr/local"
        INSTALL_H="$PREFIX/include"
        INSTALL_A="$PREFIX/lib"
        ;;
    3)
        # Tenta detectar Downloads no Linux ou Windows (via WSL)
        INSTALL_H="$HOME/Downloads"
        INSTALL_A="$HOME/Downloads"
        ;;
    *)
        echo -e "${RED}Opção inválida!${NC}"
        exit 1
        ;;
esac

# 3. Download e Instalação
echo -e "\n${GREEN}Baixando arquivos...${NC}"

if [ "$DL_METHOD" == "1" ]; then
    $DOWNLOAD_CMD $URL_H
    $DOWNLOAD_CMD $URL_A
else
    $DOWNLOAD_CMD zenitos.h $URL_H
    $DOWNLOAD_CMD libzenitos.a $URL_A
fi

# Checagem de incompatibilidade (Permissão de escrita)
if [ ! -w "$INSTALL_H" ]; then
    echo -e "${RED}Erro: Sem permissão de escrita em $INSTALL_H. Tente rodar com sudo.${NC}"
    exit 1
fi

mv zenitos.h "$INSTALL_H/"
mv libzenitos.a "$INSTALL_A/"

echo -e "\n${GREEN}Zanitos instalado com sucesso em $INSTALL_H!${NC}"
