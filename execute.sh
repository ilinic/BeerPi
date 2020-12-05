#!/bin/sh

cd /home/ceres2/BeerPi/

sudo chmod a+x *.sh
sudo chmod a+x BeerPi_jar/*.sh
sudo xset s off
sudo xset s noblank
sudo timedatectl set-ntp false
sudo setxkbmap -option grp:switch,grp:alt_shift_toggle,grp_led:scroll us,ru

sudo ionice -c 1 -n 0 java -jar /home/ceres2/BeerPi/BeerPi_jar/BeerPi.jar --add-opens java.base/java.lang=ALL-UNNAMED

sudo timedatectl set-ntp true
lxpanel --profile LXDE-pi
sudo pcmanfm
sudo ntpdate -s ntp.ubuntu.com
