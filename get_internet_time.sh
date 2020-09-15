#!/bin/sh
sudo timedatectl set-timezone Europe/Moscow
sudo timedatectl set-ntp true
sudo ntpdate -u ntp.ubuntu.com
read -p "Please press enter to continue..." nothing 