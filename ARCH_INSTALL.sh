#!/bin/bash

echo "======================================================="
echo "========== Installing essential dependencies =========="
echo "======================================================="

sudo pacman -S stow git
sudo pacman -S --needed base-devel

echo "    => INSTALLED stow git!"

echo "======================================================="
echo "================== Pulling Submodules ================="
echo "======================================================="

git submodule init

echo "======================================================="
echo "================== Creating Symlinks =================="
echo "======================================================="

stow .

echo "    => THE CONFIG FILE HAS BEEN ADDED SUCCESSFULY!"

echo "======================================================="
echo "==================== Installing yay ==================="
echo "======================================================="
# mkdir tmp/
# cd tmp
# git clone https://aur.archlinux.org/yay.git
# cd yay
# makepkg -si
# cd ../..

echo "    => YAY IS INSTALLED!"

echo "======================================================="
echo "============== INSTALLING OTHER PACKAGES =============="
echo "======================================================="

# TODO: Install eww, and some of the things that needed in your hyprland config
sudo pacman -S zsh hyprland fzf ghostty starship

echo "    => INSTALLED zsh hyprland fzf ghostty!"

echo "DONE."
