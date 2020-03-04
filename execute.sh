#!/bin/sh

cd /home/khadas/Desktop/compiledBeerPi/

sudo chmod u+x *.sh
sudo chmod u+x BeerPi_jar/*.sh
sudo xset s off
sudo xset dpms 0 0 0

while :
do
	sudo java -jar ./BeerPi_jar/BeerPi.jar -ea
done
