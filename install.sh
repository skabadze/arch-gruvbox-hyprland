#!/bin/bash

if [ "$EUID" -eq 0 ]
  then echo "Do NOT run as root"
  exit
fi

sudo pacman --noconfirm -S fastfetch fuzzel kitty swaync waybar wlogout hyprland hyprlock hypridle hyprpolkitagent swww ufw git base-devel

sudo enable ufw 
sudo systemctl enable ufw

cd ./.config/
mkdir ~/.config
cp -r * ~/.config

hyprctl reload
killall waybar
waybar & disown
swww-daemon & disown
swww img ./gruvbox_girl.png 

cd ~
mkdir git-clones
cd git-clones
git clone https://github.com/Morganamilo/paru-bin.git
cd paru-bin
makepkg -si

echo "You should restart your PC now."
