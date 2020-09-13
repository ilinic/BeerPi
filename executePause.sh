#!/bin/sh


cd /home/pi/Desktop/BeerPi/

sudo chmod a+x *.sh
sudo chmod a+x BeerPi_jar/*.sh
sudo xset s off

#sudo nice -20 java -Dprism.order=sw -Xmx2G -jar --module-path /usr/share/openjfx/lib --add-modules ALL-MODULE-PATH ./BeerPi_jar/BeerPi.jar -ea
#sudo nice -20 java -Xms=1G -Xmx=2G -jar ./BeerPi_jar/BeerPi.jar -ea
sudo nice -20 java -Xms1G -jar ./BeerPi_jar/BeerPi.jar -ea --add-opens java.base/java.lang=ALL-UNNAMED
read -p "Please press enter to continue..." nothing 
