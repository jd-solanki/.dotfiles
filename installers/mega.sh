source "$(dirname "$0")/../utils/functions.sh"
source "$(dirname "$0")/../utils/vars.sh"

infoh1 "Mega"

pblue "It assumes you are using ubuntu. Press any key to continue."
wait_for_keypress

ubuntu_version=lsb_release -r | grep -oP "[\d\.]+"

# Download mega
pblue "Downloading megasync & nautils integration from available files..."
echo "Press any key once both downloads are done"
pblue "Opening browser in 3 seconds..."
sleep 3
google-chrome "https://mega.nz/linux/repo/xUbuntu_$ubuntu_version/amd64/" > /dev/null 2>&1 &
wait_for_keypress

# Install mega
pblue "Installing mega now..."
sudo dpkg -i /tmp/megasync*.deb >> "$LOG_DIR.dotfiles.log"
pgreen "Chrome installed\n"

# WIP
# Install gdebi