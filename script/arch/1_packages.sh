#!/bin/bash

# For 256-Color Terminals
BLACK='\e[38;5;0m'    # Black
RED='\e[38;5;196m'   # Red
GREEN='\e[38;5;46m'  # Green
YELLOW='\e[38;5;226m' # Yellow
BLUE='\e[38;5;21m'   # Blue
PURPLE='\e[38;5;129m' # Purple
CYAN='\e[38;5;51m'   # Cyan
WHITE='\e[38;5;15m'  # White
ORANGE='\e[38;5;208m' # Orange


# Functions
Step1     () { echo -e "${GREEN}-----";echo -e "# ${*}";echo -e "-----${NC}";:; }
Step2     () { echo -e "${CYAN}${*}${NC}";:; }
Step3     () { echo -e "${ORANGE}${*}${NC}";:; }

# Keep sudo authenticated while the script is running
while true; do 
    sudo -n true 
    sleep 60
    kill -0 "$$" || exit
done 2>/dev/null &

# 1. Enabling multilib
Step1 "1. Enabling multilib"
sudo sed -i '/^\#[multilib]/s/^#//' /etc/pacman.conf
sudo sed -i '/^#Include = \/etc\/pacman.d\/mirrorlist/s/^#//' /etc/pacman.conf


# 2. Installing Arch Packages
Step1 "2. Installing Arch Packages"

## 2-1. Installing System Utilities
Step2 "2-1. Installing System Utilities"
Step3 "2-1-1. Installing System Utilities - Console Tools"
sudo pacman -S --noconfirm \
    bat bpytop dmidecode duf exa gdb-dashboard neofetch neovim nmon powertop tre usbutils wl-clipboard zoxide zsh zsh-completions

Step3 "2-1-2. Installing System Utilities - Compression Tools"
sudo pacman -S --noconfirm \
    zip unzip unrar p7zip lzop

Step3 "2-1-3. Installing System Utilities - Network Tools"
sudo pacman -S --noconfirm \
    aria2 nmap rclone rsync traceroute wavemon

Step3 "2-1-4. Installing File System Utilities"
sudo pacman -S --noconfirm \
    ntfs-3g exfat-utils sshfs

Step3 "2-1-5. Installing Network Services"
sudo pacman -S --noconfirm \
    reflector wireguard-tools

Step3 "2-1-6. Installing Service Management"
sudo pacman -S --noconfirm \
    cronie numlockon bluez

## 2-2. Desktop Environment (KDE)
Step2 "2-2. Desktop Environment (KDE)"
Step3 "2-2-1. Installing KDE System Tools"
sudo pacman -S --noconfirm \
    bluedevil dolphin kcalc kcron kscreen ksystemStep2 partitionmanager plasma-nm plasma-pa powerdevil

Step3 "2-2-2. Installing KDE Utilities"
sudo pacman -S --noconfirm \
    ark filelight kalgebra kcharselect kdeconnect kdf kgpg konsole kwalletmanager okular yakuake

## 2-3. Development and Containers
Step2 "2-3. Development and Containers"
Step3 "2-3-1. Installing Development Tools"
sudo pacman -S --noconfirm \
    git lazygit

Step3 "2-3-2. Installing Containerization Tools"
sudo pacman -S --noconfirm \
    docker lazydocker openresolv

## 2-4. Remote Access and Communication
Step2 "2-4. Remote Access and Communication"
Step3 "2-4-1. Installing Remote Desktop and Access Tools"
sudo pacman -S --noconfirm \
    scrcpy remmina freerdp

Step3 "2-4-2. Installing Input Method Framework"
sudo pacman -S --noconfirm \
    fcitx5 fcitx5-im fcitx5-hangul fcitx5-qt

## 2-5. Multimedia
Step2 "2-5. Multimedia"
Step3 "2-5-1. Installing Media Players and Tools"
sudo pacman -S --noconfirm \
    vlc wine


# 3. Installing yay
Step1 "3. Installing yay"
mkdir ~/AUR
cd ~/AUR
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si 
cd ~/
rm -r AUR