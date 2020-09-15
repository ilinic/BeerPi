#!/bin/sh

cd /home/pi/BeerPi/

sudo chmod a+x *.sh
sudo chmod a+x BeerPi_jar/*.sh
sudo xset s off
sudo timedatectl set-ntp false

while :
do
	sudo ionice -c 1 -n 0 java -jar /home/pi/BeerPi/BeerPi_jar/BeerPi.jar -ea --add-modules ALL-MODULE-PATH --add-opens java.base/java.lang=ALL-UNNAMED

	if [ $? != 0 ]; then
		break
	fi
done

sudo lxpanel --profile LXDE-pi

sudo timedatectl set-ntp true
sudo ntpdate -s ntp.ubuntu.com

sudo setxkbmap -option grp:switch,grp:alt_shift_toggle,grp_led:scroll us,ru
cd /home/pi/BeerPi/
sudo pcmanfm


