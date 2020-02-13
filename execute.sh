#!/bin/sh

sudo chmod u+x *.sh
sudo chmod u+x BeerPi_jar/*.sh

while :
do
	sudo java -jar ./BeerPi_jar/BeerPi.jar -ea
done
