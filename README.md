# Bootstrap Script for My Desktop Environment

This script is a way to get my Hyprland Wayland compositor configs with other stuff that I use.
All this configuration is originally made for my taste. So things might not work as per your expectation.

## Requirements

1. Arch or Arch based Distro.
2. Internet connection.

## How to install

Installing is very easy as cloning this repo and executing the script.sh

~~~
git clone https://github.com/tiwari-krishna/krishna-env
cd krishna-env
chmod +x script.sh
./script.sh
~~~

Log out of the Environment and change your session to Hyprland in your Display Manager (Login Manager)

## For Users who don't use Display Manager

Uncomment the line in ~/.bash_profile that has Hyprland and /dev/tty1.
As you might have already guessed, it autologins to Hyprland when you login to tty1.
If you don't want that just type Hyprland as command in any tty after loggging into that tty.
