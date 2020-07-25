#!/bin/sh

cd /home/pi/Desktop/compiledBeerPi/

sudo chmod a+x *.sh
sudo chmod a+x BeerPi_jar/*.sh
sudo xset s off

#while :
#do
	sudo nice -20 java -Xms1G -jar ./BeerPi_jar/BeerPi.jar -ea
#done
