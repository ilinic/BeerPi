#!/bin/sh
sudo timedatectl set-timezone Europe/Moscow
cd /home/pi/Desktop/compiledBeerPi/BeerPi_jar/
sudo java -jar set_maple_clock.jar ttyAMA0 $1