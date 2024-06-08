sudo add-apt-repository universe -y
sudo add-apt-repository ppa:agornostal/ulauncher -y
sudo apt update -y
sudo apt install -y ulauncher

mkdir -p ~/.config/autostart/
cp ~/.local/share/dev-setup-ubuntu-24-04/config/ulauncher.desktop ~/.config/autostart/ulauncher.desktop
gtk-launch ulauncher.desktop >/dev/null
sleep 4
cp ~/.local/share//dev-setup-ubuntu-24-04/config/ulauncher.json ~/.config/ulauncher/settings.json