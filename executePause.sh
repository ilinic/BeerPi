#!/bin/sh

cd /home/ceres2/BeerPi/

sudo chmod a+x *.sh
sudo chmod a+x BeerPi_jar/*.sh
sudo xset s off
sudo xset s noblank
sudo timedatectl set-ntp false
sudo setxkbmap -option grp:switch,grp:alt_shift_toggle,grp_led:scroll us,ru

sudo ionice -c 1 -n 0 java -jar /home/ceres2/BeerPi/BeerPi_jar/BeerPi.jar -ea --add-modules ALL-MODULE-PATH --add-opens java.base/java.lang=ALL-UNNAMED
read -p "Please press enter to continue..." nothing 
