#!/bin/sh

cd /home/pi/BeerPi/

sudo chmod a+x *.sh
sudo chmod a+x BeerPi_jar/*.sh
sudo xset s off
sudo xset s noblank
sudo timedatectl set-ntp false
sudo setxkbmap -option grp:switch,grp:alt_shift_toggle,grp_led:scroll us,ru

while :
do
	sudo ionice -c 1 -n 0 java -jar /home/pi/BeerPi/BeerPi_jar/BeerPi.jar --add-opens java.base/java.lang=ALL-UNNAMED

	if [ $? != 0 ]; then
		break
	fi
done

sudo timedatectl set-ntp true
lxpanel --profile LXDE-pi
sudo pcmanfm
sudo ntpdate -s ntp.ubuntu.com