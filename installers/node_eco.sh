source "$(dirname "$0")/../utils/functions.sh"
source "$(dirname "$0")/../utils/vars.sh"

infoh1 "nvm"

pblue "Downloading nvm..."
wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash > /dev/null 2>&1

pblue "Setting up nvm for this script to run further commands which depends on it"
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
pgreen "nvm setup complete\n"

pblue "Insalling Node LTS version & setting it as default version"
nvm install --lts > /dev/null 2>&1 && nvm use --lts > /dev/null 2>&1
pgreen "nvm installation and setup completed"

echo -e "\n\n"

infoh1 "yarn"

# source bashrc
source ~/.bashrc

pblue "Installing yarn..."
npm install --global yarn > /dev/null 2>&1
pgreen "Yarn installed\n"

pblue "Adding yarn path..."
echo -e '\n\n#Yarn\nexport PATH=$(nvm which current | grep -oP ".*/bin"):$PATH' >> ~/.profile
pgreen "Yarn path added"

pblue "Adding yarn global bin path to '~/.profile'"
echo -e '\nexport PATH="$PATH:`yarn global bin`"' >> ~/.profile
pgreen "Path added\n"

# source
source ~/.bashrc
source ~/.profile

infoh1 "Vue CLI"

pblue "Installing vue-cli..."
yarn global add @vue/cli > /dev/null 2>&1

pblue "checking installation by printing vue version..."
vue --version
pgreen "Setup complete"

infoh1 "ni by antfu"

pblue "Installing ni..."
npm i -g @antfu/ni > /dev/null 2>&1

infoh1 "pnpm"

pblue "Installing pnpm..."
npm install -g pnpm > /dev/null 2>&1

echo -e "\n\n"