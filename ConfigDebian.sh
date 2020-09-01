#!/bin/bash

cd ~

Maj(){
    sudo apt-get update -y && sudo apt-get upgrade -y
}

ImportantPack(){
    sudo apt-get install neofetch htop python3 python3-pip curl git build-essential vim network-manager wget 
}

clear
echo -e "\e[1;91m
    ____        _
   |  _ \  __ _| |_ __ _
   | | | |/ _` | __/ _` |
   | |_| | (_| | || (_| |
   |____/ \__,_|\__\__,_|\/   
\e[0m"

echo -e "\e[1;92m 1) Update \n 2) Add repositories (Germany)\n 3) Installation Importants Packages\n 4) Installation Other Packages\n \e[0m"

read -p '==> ' choice

if [ $choice == 1 ]
then
    Maj

elif [ $choice == 2 ]
then
    echo -e "\e[1;91mDon't forget to update after \e[0m"
    echo "deb http://ftp-stud.hs-esslingen.de/debian/ buster main non-free contrib
deb-src http://ftp-stud.hs-esslingen.de/debian/ buster main non-free contrib

deb http://security.debian.org/debian-security buster/updates main contrib non-free
deb-src http://security.debian.org/debian-security buster/updates main contrib non-free

# buster-updates, previously known as 'volatile'
deb http://ftp-stud.hs-esslingen.de/debian/ buster-updates main contrib non-free
deb-src http://ftp-stud.hs-esslingen.de/debian/ buster-updates main contrib non-free
#By Swixo" | sudo tee /etc/apt/sources.list
    echo -e "\e[1;91mDon't forget to update after \e[0m"

elif [ $choice == 3 ]
then
    ImportantPack

elif [ $choice == 4 ]
then
    clear
    echo -e "\e[1;91m
    ____        _
   |  _ \  __ _| |_ __ _
   | | | |/ _` | __/ _` |
   | |_| | (_| | || (_| |
   |____/ \__,_|\__\__,_|\/     
\e[0m"

    echo -e "\e[1;92m 1) Discord\n 2) Spotify\n 3) Wireshark\n 4) FileZilla\n 5) Basic Pentesting Tools\n \e[0m"
    read -p '==> ' otherchoice

    if [ $otherchoice == 1 ]
    then
        wget --mirror 'https://discord.com/api/download?platform=linux&format=deb' -O ~/Téléchargements/discord.deb
        sudo dpkg -i ~/Téléchargements/discord.deb
        sudo apt install -f -y

    elif [ $otherchoice == 2 ]
    then
        curl -sS https://download.spotify.com/debian/pubkey.gpg | sudo apt-key add
        echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
        sudo apt update -y && sudo apt install spotify-client -y

    elif [ $otherchoice == 3 ]
    then
        sudo apt install wireshark -y

    elif [ $otherchoice == 4 ]
    then
        sudo apt install filezilla -y

    elif [ $otherchoice == 5 ]
    then
        sudo apt install nmap john hydra dirbuster -y
        
    else
        echo -e "\e[1;91m [*] Good Bye ! :) \e[0m"
    fi
fi