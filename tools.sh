#!/bin/bash


# Ajouter les dépôts nécessaires et mettre à jour la liste des paquets
sudo apt-get update
sudo apt-get upgrade -y

# PostgreSQL 17
echo "deb http://apt.postgresql.org/pub/repos/apt/ $(lsb_release -cs)-pgdg main" | sudo tee /etc/apt/sources.list.d/pgdg.list
wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -
sudo apt-get update
sudo apt-get install -y postgresql-17

# Reverse Engineering
sudo apt-get install -y ghidra radare2 x64dbg cutter capstone rizin
# Frida
pip install --user frida-tools

# Web
sudo apt-get install -y burpsuite nikto w3af sqlmap xsstrike dirbuster wapiti

# OSINT
sudo apt-get install -y shodan maltego theharvester foca sleuthkit spiderfoot recon-ng

# PWN
sudo apt-get install -y metasploit-framework beef-xss sqlmap nmap john hydra exploitdb

# Miscellaneous
sudo apt-get install -y wireshark nmap burpsuite john aircrack-ng kismet ettercap

echo "Tous les outils gratuits ont été installés avec succès !"
