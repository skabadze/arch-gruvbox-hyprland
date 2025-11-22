#!/bin/bash

if [ "$EUID" -eq 0 ]
  then echo "Do NOT run as root"
  exit
fi

sudo pacman --noconfirm -S fastfetch fuzzel kitty thunar tumbler swaync waybar hyprland hyprlock hypridle hyprpolkitagent nwg-look pipewire pavucontrol bluez blueman mpv ttf-roboto ttf-nerd-fonts-symbols otf-font-awesome swww btop firewalld flatpak git base-devel

sudo systemctl enable firewalld
sudo systemctl start firewalld

swww-daemon & disown
swww img ./gruvbox_girl.png 

cd ~
mkdir git-clones
cd git-clones
git clone https://aur.archlinux.org/paru-bin.git
cd paru-bin
makepkg -si

paru --noconfirm -S wlogout waypaper

cd ./.config/
mkdir ~/.config
cp -r * ~/.config

hyprctl reload
killall waybar
waybar & disown

sudo pacman -S blender krita kdenlive wine steam heroic-games-launcher qbittorrent supertuxcart audacious bitwarden openrgb element-desktop prism-launcher libreoffice code thunderbird

paru -S vesktop mullvad-vpn-bin librewolf-bin 

echo "You should restart your PC now."
