#!/bin/sh
timedatectl set-timezone Europe/Moscow
cd /home/pi/Desktop/compiledBeerPi/BeerPi_jar/
tval="$(java -jar get_maple_clock.jar ttyAMA0)"
date -s @$tval