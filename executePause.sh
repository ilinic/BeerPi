#!/bin/sh


cd /home/pi/Desktop/compiledBeerPi/

sudo chmod a+x *.sh
sudo chmod a+x BeerPi_jar/*.sh
sudo xset s off

#sudo nice -20 java -Dprism.order=sw -Xmx2G -jar --module-path /usr/share/openjfx/lib --add-modules ALL-MODULE-PATH ./BeerPi_jar/BeerPi.jar -ea
sudo nice -20 java -Xms=500M -jar ./BeerPi_jar/BeerPi.jar -ea
read -p "Please press enter to continue..." nothing 
