#!/bin/sh

cd /home/pi/Desktop/BeerPi/

sudo chmod a+x *.sh
sudo chmod a+x BeerPi_jar/*.sh
sudo xset s off

#while :
#do
	sudo nice -20 java -Xms1G -jar ./BeerPi_jar/BeerPi.jar -ea --add-opens java.base/java.lang=ALL-UNNAMED
#done
