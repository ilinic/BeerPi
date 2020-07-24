#!/bin/sh

cd /home/pi/Desktop/compiledBeerPi/

sudo chmod a+x *.sh
sudo chmod a+x BeerPi_jar/*.sh
sudo xset s off

sudo java -jar ./BeerPi_jar/BeerPi.jar -ea
read -p "Please press enter to continue..." nothing 
