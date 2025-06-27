#!/bin/bash

#-------------------------------------------------------------------------
# Script para configurar um servidor web Apache em Ubuntu 22.04
# Autor: Luiz Carvalho
# Data: 27/06/2025
#
# Este script executa as seguintes ações:
# 1. Atualiza os pacotes do sistema.
# 2. Instala o servidor web Apache2 e o utilitário unzip.
# 3. Baixa uma aplicação web de exemplo do GitHub.
# 4. Extrai e copia os arquivos da aplicação para o diretório padrão do Apache.
#-------------------------------------------------------------------------

# Garante que o script pare se algum comando falhar
set -e

echo "----------------------------------------------------"
echo "Iniciando a configuração do servidor..."
echo "----------------------------------------------------"

# Etapa 1: Atualizar o servidor
echo "[ETAPA 1/4] Atualizando os pacotes do servidor..."
apt-get update
apt-get upgrade -y
echo "Servidor atualizado com sucesso!"
echo ""

# Etapa 2: Instalar Apache2 e Unzip
echo "[ETAPA 2/4] Instalando Apache2 e Unzip..."
apt-get install apache2 unzip -y
echo "Apache2 e Unzip instalados com sucesso!"
echo ""

# Etapa 3: Baixar a aplicação no diretório /tmp
echo "[ETAPA 3/4] Baixando a aplicação para o diretório /tmp..."
# Navega para o diretório temporário
cd /tmp
# Baixa o arquivo zip do projeto
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
echo "Aplicação baixada com sucesso!"
echo ""

# Etapa 4: Descompactar e copiar os arquivos da aplicação
echo "[ETAPA 4/4] Descompactando e copiando arquivos para o diretório do Apache..."
# Extrai o conteúdo do arquivo .zip
unzip main.zip
# Navega para o diretório criado após a extração
cd linux-site-dio-main
# Copia todo o conteúdo do diretório para a pasta padrão do Apache
cp -R * /var/www/html/
echo "Arquivos da aplicação copiados com sucesso!"
echo ""

# Finalização
echo "----------------------------------------------------"
echo "Configuração do servidor finalizada com sucesso!"
echo "Acesse o endereço IP do seu servidor no navegador para ver o site."
echo "----------------------------------------------------"