#!/bin/bash

# Function that actually does stuff
install_it() {
echo "Updating And Installing Required programs"

sudo pacman -Syu --noconfirm

sudo pacman -S --noconfirm git base-devel firefox neovim foot alacritty pcmanfm hyprland xdg-desktop-portal-hyprland mpd ncmpcpp mpv lf qutebrowser rofi rofi-emoji dmenu dunst imv transmission-cli noto-fonts noto-fonts-emoji noto-fonts-extra noto-fonts-cjk ttf-fira-code ttf-fira-mono ttf-fira-sans ttf-firacode-nerd ttf-font-awesome waybar bash-completion gammastep r xarchiver unzip notepadqq keepassxc qt5-wayland qt6-wayland galculator zathura zathura-ps zathura-cb zathura-djvu zathura-pdf-mupdf minitube yt-dlp wl-clipboard swaybg swayidle swaylock grim slurp android-tools cliphist brightnessctl pavucontrol ffmpeg4.4 pipewire pipewire-pulse pipewire-alsa pipewire-jack wireplumber playerctl fzf fd jq qrencode htop

echo "Installing Paru for a AUR Helper"
git clone https://aur.archlinux.org/paru-bin.git /tmp/
cd /tmp/paru-bin && makepkg -si

paru -S --noconfirm tofi didyoumean-bin jmtpfs

cd ~/

echo "Cloning My Repos from GitHub and adding them to the Required Folders"
git clone --depth 1 https://github.com/tiwari-krishna/arch-rice.git

cp -r arch-rice/.* ~/ 
rm -rf ~/.git

echo "Post-installation script completed!"
echo "If you are on Artix Linux make sure the follwing things"
echo "1. Copy ~/arch-rice/sysfiles/pipewire.conf to /etc/pipewire"
echo "2. Uncomment the exec-once pipewire line in ~/.config/hypr/hyprland.conf"
}

# Calling the function only user agrees to it
echo "Back Your configs up first. Any conflicting configs will be overwritten during the Installing."
echo "Are you sure to do it? Type YES in all caps to continue."
read decision
if [ "$decision" = "YES" ]; then
 echo "Don't step away. Might ask for sudo password a few times."
 install_it
else
 exit 0
fi
