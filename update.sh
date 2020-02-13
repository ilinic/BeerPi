sudo chown -R $USER:$USER "$(git rev-parse --show-toplevel)/.git"
git fetch --all
git reset --hard origin/master
echo ""
read -p "Please press enter to continue..." nothing

