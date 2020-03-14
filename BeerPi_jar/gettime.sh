#!/bin/sh
sudo timedatectl set-timezone Europe/Moscow
tval="$(sudo java -jar /home/pi/Desktop/compiledBeerPi/BeerPi_jar/get_maple_clock.jar ttyAMA0)"
sudo date -s @$tval
read -p "Please press enter to continue..." nothing 