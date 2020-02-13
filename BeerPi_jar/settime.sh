#!/bin/sh
sudo timedatectl set-timezone $2
sudo date -s @$1
sudo hwclock --systohc
sudo reboot --reboot