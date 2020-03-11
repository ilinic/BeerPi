#!/bin/sh

cd /home/pi/Desktop/compiledBeerPi/

sudo chmod u+x *.sh
sudo chmod u+x BeerPi_jar/*.sh
sudo xset s off

while :
do
	sudo java -jar ./BeerPi_jar/BeerPi.jar -ea
done
