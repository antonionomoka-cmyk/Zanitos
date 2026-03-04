#!/bin/bash

# Cores para o menu
VERDE="\e[32m"
AZUL="\e[34m"
RESET="\e[0m"

while true; do
    clear
    echo -e "${VERDE}=== MENU ZENITOS ===${RESET}"
    echo -e "${AZUL}1)${RESET} Instalar a Biblioteca (via wget)"
    echo -e "${AZUL}2)${RESET} Verificar Dependências"
    echo -e "${AZUL}3)${RESET} Sobre"
    echo -e "${AZUL}4)${RESET} Sair"
    echo ""
    read -p "Escolha uma opção: " opcao

    case $opcao in
        1)
            echo "Baixando do MediaFire..."
            wget https://download1590.mediafire.com/dsy1qlj368fgnVy0x7C1Vm8_fe3pBVDC25Fwks51KDam7OdXEC1OGEbXm8cYdb5ITS7296mv-4hur82piJmUTSkYF1AGjNKzWarQD07bUDsWuPBDb3o5SzWLKYQv5sPChy31ESxC44N3sFIJ7yacC0eUq865YVJn2i5V53lWOPob/uxjugepqbscgoei/Zanitos%2B%2B.zip
            echo "Download concluído!"
            sleep 2
            ;;
        2)
            echo "Verificando wget e curl..."
            command -v wget && echo "wget OK" || echo "Instale o wget"
            sleep 2
            ;;
        3)
            echo "Zenitos v1.0 - Linguagem leve de 6kb."
            sleep 3
            ;;
        4)
            echo "Saindo..."
            exit 0
            ;;
        *)
            echo "Opção inválida!"
            sleep 1
            ;;
    esac
done
