#!/bin/bash

# Update/Upgrade
apt-get update
apt-get -y upgrade

# Download and install files
# Wallpaper:
wget https://raw.github.com/Vagdish/Debian8-Theme/master/wallpapers/grand_pix_by_nosphere_debianized.png
mkdir /usr/share/backgrounds
mv grand_pix_by_nosphere_debianized.png /usr/share/backgrounds/grand_pix_by_nosphere_debianized.png
# Conky
https://raw.github.com/Vagdish/Debian8-Theme/master/conky/.conky_time.rc
https://raw.github.com/Vagdish/Debian8-Theme/master/conky/.conky_audacious.rc
mkdir /usr/share/conky
mv .conky_time.rc /usr/share/conky/.conky_time.rc
mv .conky_audacious.rc /usr/share/conky/.conky_audacious.rc

# xserver
apt-get -y install xserver-xorg

# xdm
apt-get -y install xdm
rm /etc/xdg/openbox/autostart


# Openbox
apt-get -y install openbox

# conky
apt-get -y install conky

# base misc
apt-get -y install midori lxterminal obmenu pcmanfm feh

# misc
apt-get -y install audacious vlc feh

# Reboot
reboot
