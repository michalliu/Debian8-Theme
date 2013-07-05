#!/bin/bash

# Update/Upgrade
apt-get update
apt-get -y upgrade

# Download and install files
# Wallpaper:
wget https://raw.github.com/Vagdish/Debian8-Theme/master/wallpapers/grand_pix_by_nosphere_debianized.png
mkdir /usr/share/images
mv grand_pix_by_nosphere_debianized.png /usr/share/images/grand_pix_by_nosphere_debianized.png
# Conky
https://raw.github.com/Vagdish/Debian8-Theme/master/conky/.conky_time.rc
https://raw.github.com/Vagdish/Debian8-Theme/master/conky/.conky_audacious.rc
mkdir /usr/share/conky
mv .conky_time.rc /usr/share/conky/.conky_time.rc
mv .conky_audacious.rc /usr/share/conky/.conky_audacious.rc

# xserver
apt-get install xserver-xorg

# xdm
apt-get install xdm

# Openbox
apt-get install openbox

# conky
apt-get install conky

# base misc
apt-get install midori lxterminal obmenu pcmanfm

# misc
apt-get install audacious vlc libreoffice

# Reboot
reboot