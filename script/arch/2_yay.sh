#!/bin/bash


# Install yay
mkdir ~/AUR
cd ~/AUR
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si 
cd ../
rm -r AUR