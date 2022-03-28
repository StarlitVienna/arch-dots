#!/bin/bash

sudo pacman -S git vim nvim zsh feh
sudo pacman -S xorg xorg-apps xorg-xinit
sudo pacman -S i3-gaps i3blocks i3status krita picom firefox kitty thunar
sudo pacman -S --needed git base-devel && git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si

yay -S nvidia-390xx-dkms
yay -S nvidia-390xx-utils
yay -S lib32-nvidia-390xx-utils

git clone https://github.com/esoperiotyck/arch-dots

mkdir ~/.config/nvim
mkdir ~/.config/polybar
mkdir ~/.config/kitty

cp /etc/X11/xinit/xinitrc ~/.xinitrc
cp ./arch-dots/i3/config ~/.config/i3/config
cp ./arch-dots/polybar/config ~/.config/polybar/config
cp ./arch-dots/polybar/launch.sh ~/.config/polybar/launch.sh
cp ./arch-dots/nvim/init.vim ~/.config/nvim/init.vim
cp ./arch-dots/nvim/python.vim ~/.config/nvim/python.vim
cp ./arch-dots/kitty/config ~/.config/kitty/config
cp ./arch-dots/wallpaper/jpxfm68K_4x.jpg ~/Downloads/jpxfm68K_4x.jpg

chmod +x ~/.config/polybar/launch.sh
