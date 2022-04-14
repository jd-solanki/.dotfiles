source "$(dirname "$0")/../utils/functions.sh"
source "$(dirname "$0")/../utils/vars.sh"

infoh1 "Gnome Tweaks"

pblue "Installing gnome tweaks..."
sudo apt install gnome-tweaks >> "$LOG_DIR.dotfiles.log"
pgreen "gnome-tweaks installed successfully"

pblue "Let's configure gnome-tweaks:"
echo "1. Add slack to startip application"
echo '2. windows → window focus → "focus on hover" & check "raise windows when focused"'
echo '3. workspaces → display handling → workspaces span display'
wait_for_keypress