#!/bin/bash

echo "Preparando Ambiente v1 \n\n"

echo "Instalando Pacotes Linux: \n::PosgreSQL Server::\n::PostgreSQL Client::\n::Python3-Dev::\n::Libpq-Dev::"
sudo apt-get install postgresql postgresql-client python3-dev libpq-dev -y > /dev/null 2>&1

if [ $? -eq 0 ]; then
    echo "Pacotes instalados com sucesso!"
else
    echo "Erro ao instalar pacotes. Verifique e corrija os problemas antes de continuar."
    exit 1
fi

path=$(pwd)
path_venv="$path/venv"
clear
echo "Criando o Venv de Desenvolvimento"
python3 -m venv $path_venv
if [ $? -eq 0 ]; then
    echo "Ambiente virtual criado com sucesso!"
else
    echo "Erro ao criar o ambiente virtual. Verifique e corrija os problemas antes de continuar."
    exit 1
fi

. $path_venv/bin/activate
clear
echo "Instalando Requirements da Aplicação no Venv \n"
pip3 install -r $path/requirements.txt > /dev/null 2>&1
 
if [ $? -eq 0 ]; then
    echo "Requisitos instalados com sucesso!"
else
    echo "Erro ao instalar requisitos. Verifique e corrija os problemas antes de continuar."
    exit 1
fi
