#!/bin/sh

# Update/Upgrade
apt-get update
apt-get -y upgrade

# Install base packages
apt-get -y install xserver-xorg slim lxde-core iceweasel lxterminal gpicview leafpad lxappearance lxde-icon-theme lxinput lxrandr lxsession-edit lxshortcut lxterminal obconf xarchiver menu-xdg lxtask wicd git

# Aiming to use slimlock instead
apt-get -y purge xscreensaver

# Work in /tmp dir and grab files
cd /tmp
git clone https://github.com/Vagdish/Debian8-Theme.git

# Save wallpaper in /usr/share/backgrounds
mkdir /usr/share/backgrounds/
cp wallpaper/jessy-background.png /usr/share/backgrounds/

# Setup slim theme

# Setup lxpanel

# Setup backgrounds

