#!/bin/sh

# Update/Upgrade
apt-get update
apt-get -y upgrade

# Install base packages
apt-get -y install xserver-xorg slim lxde-core midori lxterminal gpicview leafpad lxappearance lxde-icon-theme lxinput lxrandr lxsession-edit lxshortcut obconf xarchiver menu-xdg lxtask wicd git evince sylpheed

# Aiming to use slimlock instead
apt-get -y purge xscreensaver

# Work in /tmp dir and grab files
cd /tmp
git clone https://github.com/Vagdish/Debian8-Theme.git
cd Debian8-Theme

# Save wallpaper and debian logo in /usr/share/backgrounds
mkdir /usr/share/backgrounds/
cp wallpaper/jessy-background.png /usr/share/backgrounds/
cp openlogo-nd.svg /usr/share/backgrounds/

# Setup slim theme
cp -R slim/jessy-slim /usr/share/slim/themes/
rm /etc/slim.conf
cp slim/slim.conf /etc/

# Setup lxpanel
rm /etc/xdg/lxpanel/profile/LXDE/panels/panel
cp lxpanel/panel /etc/xdg/lxpanel/profile/LXDE/panels/

# Setup backgrounds
rm /etc/xdg/pcmanfm/LXDE/pcmanfm.conf
cp lxde/pcmanfm.conf /etc/xdg/pcmanfm/LXDE/

# Openbox setup
rm /etc/xdg/openbox/LXDE/rc.xml
cp openbox/rc.xml /etc/xdg/openbox/LXDE/

# Change Gtk theme to Mist
rm -R /usr/share/themes/Default/
cp -R /usr/share/themes/Mist/ /usr/share/themes/Default

# Reboot
reboot
