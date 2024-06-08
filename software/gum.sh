cd ~/Downloads
GUM_VERSION="0.14.1"
curl -sLo gum.deb "https://github.com/charmbracelet/gum/releases/latest/download/gum_${GUM_VERSION}_amd64.deb"
sudo apt install ./gum.deb
rm gum.deb
cd -