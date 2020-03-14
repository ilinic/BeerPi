#!/bin/sh

sudo chown -R $USER:$USER "$(git rev-parse --show-toplevel)/.git"
sudo git fetch --all
sudo git reset --hard origin/master
sudo chmod a+x *.sh
sudo chmod a+x BeerPi_jar/*.sh
echo ""
read -p "Please press enter to continue..." nothing 

