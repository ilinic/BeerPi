#!/bin/sh
sudo timedatectl set-timezone Europe/Moscow
cd /home/pi/Desktop/compiledBeerPi/BeerPi_jar/
sudo ntpdate -u ntp.ubuntu.com
tval="$(date +%s)"
sudo java -jar set_maple_clock.jar ttyAMA0 $tval
read -p "Please press enter to continue..." nothing 