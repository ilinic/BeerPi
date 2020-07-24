#!/bin/sh


cd /home/pi/Desktop/compiledBeerPi/

sudo chown -R $USER:$USER "$(git rev-parse --show-toplevel)/.git"
sudo git fetch --all
sudo git reset --hard origin/master

sudo chmod a+x *.sh
sudo chmod a+x BeerPi_jar/*.sh
sudo xset s off

#sudo nice -20 java -Dprism.order=sw -Xmx2G -jar --module-path /usr/share/openjfx/lib --add-modules ALL-MODULE-PATH ./BeerPi_jar/BeerPi.jar -ea
sudo nice -20 java -Xms1G -Xmx2G -jar ./BeerPi_jar/BeerPi.jar -ea
read -p "Please press enter to continue..." nothing 
