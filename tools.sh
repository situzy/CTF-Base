#!/bin/bash


sudo apt-get update
sudo apt-get upgrade -y

# Reverse
sudo apt-get install -y ghidra radare2 x64dbg cutter capstone
# Install manuelle de Binary Ninja 
wget https://github.com/Vector35/binaryninja-api/releases/download/2.4.2991/BinaryNinjaPersonal-Linux.zip
unzip BinaryNinjaPersonal-Linux.zip
sudo mv binaryninja /opt/
rm BinaryNinjaPersonal-Linux.zip
# Frida
pip install frida-tools

# Web
sudo apt-get install -y burpsuite nikto w3af sqlmap xsstrike dirbuster wapiti

# OSINT
sudo apt-get install -y shodan maltego theharvester foca sleuthkit spiderfoot recon-ng

# PWN
sudo apt-get install -y metasploit-framework beef-xss sqlmap nmap john hydra exploitdb

# Misc
sudo apt-get install -y wireshark nmap burpsuite john aircrack-ng kismet ettercap

echo "Prêt pour le ctf :)"
