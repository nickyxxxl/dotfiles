#!/bin/bash

#Arch
#base
doas pacman -Sy --needed git make doas gcc
#xorg
doas pacman -Sy --needed xorg-server xorg-xinit xorg-xrandr xorg-xset xorg-xauth xorg-xprop ca-certificates
#dwm
doas pacman -Sy --needed libxinerama libxft libx11 dbus ncurses ttf-dejavu rxvt-unicode
#audio
doas pacman -Sy --needed pipewire pipwire-alsa pipewire-pulse
