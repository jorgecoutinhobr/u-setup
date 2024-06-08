#!/bin/bash

# basics tools
sudo apt-get install -y git curl unzip

for software in ./software/*.sh; do source $software; done
for config in ./config/*.sh; do source $config; done

# Add interactivity to the script
gum confirm "Ready to logout for all settings to take effect?" && gnome-session-quit --logout --no-prompt