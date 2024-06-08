# basics tools
sudo apt-get install -y git curl unzip

for script in ./software/*.sh; do source $script; done

# Add interactivity to the script
gum confirm "Ready to logout for all settings to take effect?" && gnome-session-quit --logout --no-prompt