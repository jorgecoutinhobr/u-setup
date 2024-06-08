#!/bin/bash

# basics tools
sudo apt-get install -y git curl unzip

for script in ./software/*.sh; do source $script; done
for config in ./configs/*.sh; do source $config; done

# Add interactivity to the script
gum confirm "Ready to logout for all settings to take effect?" && gnome-session-quit --logout --no-prompt