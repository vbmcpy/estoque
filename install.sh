#!/bin/bash

echo "Preparando Ambiente v1 \n\n"
echo "Instalando Pacotes Linux: \n::PosgreSQL Server::\n::PostgreSQL Client::\n::Python3-Dev::\n::Libpq-Dev::"
sudo apt install postgresql postgresql-client python3-dev libpq-dev -y
path=$(pwd)
path_venv="$path/venv"
clear
echo "Criando o Venv de Desenvolvimento"
python3 -m venv $path_venv
. $path_venv/bin/activate
clear
echo "Instalando Requirements da Aplicação no Venv \n"
pip3 install -r $path/requirements.txt


