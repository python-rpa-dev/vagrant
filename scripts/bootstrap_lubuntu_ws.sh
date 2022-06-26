#!/usr/bin/env bash
# Make sure that bootstrap script has re-run capability!

# Set folder to launch additional scripts
VM_FOLDER=$1

# Update image
sudo apt-get update  
sudo apt-get upgrade -y 
sudo apt-get dist-upgrade -y 

# Install necessary packages 
# Note: Do not install packages that require Lubuntu Desktop -> can halt the update
sudo apt-get install iproute2 htop -y

# set environment
sudo locale-gen "de_DE.UTF-8" 
sudo update-locale LANG=de_DE.UTF-8
sudo localectl set-keymap de
sudo ln -sf /usr/share/zoneinfo/Europe/Zurich /etc/localtime

# Install Lubuntu Desktop and VBox extension
sudo apt-get --no-install-recommends install lubuntu-desktop -y
sudo apt install virtualbox-guest-x11 -y


# Optional language pack => german
sudo apt-get install language-pack-de -y

# Install Browsers
sudo apt-get install firefox firefox-locale-de -y
sudo apt-get install chromium-browser chromium-browser-l10n -y

# Install Python utils
sudo apt-get install python3-pip pipenv -y

# RPA related section
#
# ---------------------------------------------------------------------- 
# Install tkinter
sudo apt-get install python3-tk python3-dev -y

# Install Screenshot util
sudo apt-get install scrot -y

# ---------------------------------------------------------------------- 

# Install JDK
sudo apt-get install openjdk-11-jre -y

# Install screen
# sudo apt-get install screen -y
# sudo sed -i '/^hardstatus.*/d' /etc/screenrc
# cat $VM_FOLDER/screenrc | sudo tee -a /etc/screenrc

# Install tmux and terminator
sudo apt-get install tmux terminator -y

# Install VNC setup
# sudo apt-get install tigervnc-standalone-server tigervnc-viewer expect -y
# sh $VM_FOLDER/set_vnc_config.sh
# cp -av $VM_FOLDER/xstartup ~/.vnc
# cp -av $VM_FOLDER/start_vnc.sh ~/.vn

# Clean up install packages
sudo apt-get clean -y

# Disable unnecessary services
# Stop multipathing since we don't need it and it keeps writing into syslog
sudo systemctl stop multipathd
sudo systemctl disable multipathd
