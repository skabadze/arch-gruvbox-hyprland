#!/bin/bash

if [ "$EUID" -eq 0 ]
  then echo "Do NOT run as root"
  exit
fi

sudo pacman --noconfirm -S fastfetch fuzzel kitty thunar tumbler swaync waybar hyprland hyprlock hypridle hyprpolkitagent xdg-desktop-portal-hyprland nwg-look pipewire pipewire-pulse pavucontrol bluez blueman mpv ttf-roboto ttf-nerd-fonts-symbols otf-font-awesome ttf-dejavu noto-fonts-cjk swww btop firewalld flatpak git base-devel rsync

sudo systemctl enable firewalld
sudo systemctl start firewalld

swww-daemon & disown
swww img ./gruvbox_girl.png 

cd ./.config/
mkdir ~/.config
cp -r * ~/.config

cd ~
mkdir git-clones
cd git-clones
git clone https://aur.archlinux.org/paru-bin.git
cd paru-bin
makepkg -si

paru --noconfirm -S wlogout waypaper

sudo pacman -S blender krita kdenlive wine steam heroic-games-launcher prismlauncher qbittorrent supertuxcart audacious bitwarden openrgb element-desktop prism-launcher libreoffice code thunderbird

paru -S vesktop-bin mullvad-vpn-bin librewolf-bin autofs heroic-games-launcher-bin prism-launcher

echo "You should restart your PC now."
