#!/usr/bin/env bash

# Colores que se usaran a lo largo del script (Corregidos)
VERDE='\033[0;32m'
AZUL='\033[0;34m'
AMARILLO='\033[0;33m'
RESET='\033[0m'

instalar(){
    echo -e "${AMARILLO}--- Iniciando comprobacion de dependencias ---${RESET}"
	echo -e "${AZUL}Nota: Se solicitara tu contrasena de Linux para instalar paquetes faltantes.${RESET}"

    if command -v docker &> /dev/null; then
        echo -e "${AMARILLO}Docker ya se encuentra instalado. Saltando este paso...${RESET}"
    else 
        sudo apt update && sudo apt install docker.io docker-compose-v2 -y
    fi

    if command -v python3 &> /dev/null; then
        echo -e "${AMARILLO}El lenguaje Python ya se encuentra instalado. Saltando este paso...${RESET}"
    else
        sudo apt update && sudo apt install python3 python3-pip python3-venv -y
    fi
}

ejecutar(){
    if command -v docker &> /dev/null; then
        if grep -q Microsoft /proc/version || grep -q "microsoft" /proc/version; then
            cmd.exe /c start "http://localhost:5000" 2>/dev/null
        else
            xdg-open http://localhost:5000 || echo -e "${AMARILLO}Por favor abre en el navegador http://localhost:5000${RESET}"
        fi 
        echo -e "${AMARILLO}Por favor ingrese su contraseña sudo{RESET}"
        sudo docker compose up --build
    else
        echo -e "${AMARILLO}--- Por favor utilice el metodo instalar() para tener todas las dependencias necesaria ---${RESET}"
        echo -e "${AMARILLO}--- Para mas informacion ejecuta: ./manage.sh help ---${RESET}"
    fi
}

help() {
        echo -e "${AMARILLO}==============================================================${RESET}"
        echo -e "${AZUL}   CENTRO DE MANDO - CLUB BAUTISTA${RESET}"
        echo -e "${AMARILLO}==============================================================${RESET}"

        printf "${VERDE}%-15s %-40s${RESET}\n" "Comando" "Funcionalidad"
        echo -e "${AMARILLO}--------------------------------------------------------------${RESET}"
        printf "%-15s %-40s\n" "instalar"       "Instala todas las dependencias que falten"
        printf "%-15s %-40s\n" "ejecutar"       "Compila y Ejecuta el proyecto"
        printf "%-15s %-40s\n" "help"           "Muestra este menu de ayuda"

        echo -e "${AMARILLO}--------------------------------------------------------------${RESET}"
        echo -e "Uso: ${VERDE}./manage.sh [comando]${RESET}"
        echo -e "${AMARILLO}==============================================================${RESET}"
}

case "$1" in
    ("ejecutar") ejecutar ;;
    ("instalar") instalar ;;
    ("help") help ;;
    (*)     help ;;
esac