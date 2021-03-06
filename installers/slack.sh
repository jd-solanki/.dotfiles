source "$(dirname "$0")/../utils/functions.sh"
source "$(dirname "$0")/../utils/vars.sh"

infoh1 "Processing slack"

echo "visit: https://slack.com/intl/en-in/downloads/linux to download slack"
echo "Press any key once downloading is done"
pblue "Opening browser with above url in 3 seconds..."
sleep 3
google-chrome https://slack.com/intl/en-in/downloads/linux > /dev/null 2>&1 &
wait_for_keypress

pblue "Installing slack..."
sudo gdebi -n /tmp/slack*.deb >> "$LOG_DIR.dotfiles.log"
pgreen "Slack installed\n"

pblue "Login slack and set download location to /tmp for slack downloads"
echo -e "Press any key once done\n"
pblue "Opening slack in 3 seconds..."
sleep 3
slack > /dev/null 2>&1 &

wait_for_keypress

echo -e "\n\n"