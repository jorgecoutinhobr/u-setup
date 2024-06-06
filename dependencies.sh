# initial dependencies
sudo apt-get update
sudo apt-get install git-core zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev software-properties-common libffi-dev

bash -c "$(curl -fsSL https://raw.githubusercontent.com/ohmybash/oh-my-bash/master/tools/install.sh)"

# install asdf
git clone https://github.com/excid3/asdf.git ~/.asdf
echo '. "$HOME/.asdf/asdf.sh"' >> ~/.bashrc
echo '. "$HOME/.asdf/completions/asdf.bash"' >> ~/.bashrc
echo 'legacy_version_file = yes' >> ~/.asdfrc
echo 'export EDITOR="code --wait"' >> ~/.bashrc

# Installl Opera
wget -qO- https://deb.opera.com/archive.key | sudo apt-key add -
echo "deb https://deb.opera.com/opera-stable/ stable non-free" | sudo tee /etc/apt/sources.list.d/opera-stable.list
sudo apt-get update && sudo apt-get install opera-stable

# install code
sudo apt-get install code

# install flameshot
sudo apt install flameshot

# install openfortiGUI
wget https://apt.iteas.at/iteas/pool/main/o/openfortigui/openfortigui_0.9.10-1_amd64_noble.deb -O openfortigui.deb
sudo apt install qtbase5-dev qtchooser qt5-qmake qtbase5-dev-tools qt5keychain-dev libqt5core5a libqt5gui5 libqt5keychain1 libqt5network5 libqt5widgets5 qttranslations5-l10n ppp
sudo apt-get install -f
sudo dpkg -i openfortigui.deb

# install chromium
sudo apt install chromium-chromedriver

# install chrome 117
wget http://dl.google.com/linux/chrome/deb/pool/main/g/google-chrome-stable/google-chrome-stable_117.0.5938.132-1_amd64.deb
sudo apt-get install libasound2t64
sudo apt-get install fonts-liberation libasound2 libnspr4 libnss3 libu2f-udev xdg-utils
#sudo apt-get install -f
sudo dpkg -i google-chrome-stable_117.0.5938.132-1_amd64.deb
sudo apt-mark hold google-chrome-stable # prevent auto update

# install notion - NEED TO FIX  
# sudo apt install liblua5.3-0
# wget http://archive.ubuntu.com/ubuntu/pool/multiverse/n/notion/notion_4.0.2+dfsg-7build1_amd64.deb -O notion.deb
# sudo apt install ./notion.deb

# install discord
wget "https://discordapp.com/api/download?platform=linux&format=deb" -O discord.deb 
sudo apt install ./discord.deb