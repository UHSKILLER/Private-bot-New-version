#!bin/bash
pkg update -y
pkg upgrade -y

CYAN="\033[1;36m"
YELLOW="\033[1;33m"
PURPLE="\033[1;35m"
GREEN="\033[1;32m"
RED='\033[1;31m'
NC='\033[0m'

echo $YELLOW"Você tem certeza que deseja atualizar o Private bot? [s/n]"
read -p "> " opts

if [ $opts = "s" ]; then

clear
echo $YELLOW"Atualizando o Private, aguarde..."
git clone https://github.com/UHSKILLER/Private-bot-New-version > /dev/null 2> /dev/null

cd Private-bot-New-version
cp -r * ..
cd ..
rm -rf Private-bot-New-version
npm i

clear
echo $GREEN"Private atualizado com sucesso!!"

elif [ $opts = "n"]; then
    clear
    echo $RED"Atualização do Private foi cancelada"
    exit
fi
##CREDITOS BRIZAS BOT ORION E OBRIGADO AO IAN POR PERMITIR O USO