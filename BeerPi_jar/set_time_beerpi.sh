#!/bin/sh
sudo timedatectl set-timezone Europe/Moscow
cd /home/pi/Desktop/BeerPi/BeerPi_jar/
sudo date +%s -s @$1
sudo java -jar set_maple_clock.jar ttyAMA0 $1