#!/bin/bash
source ./logo.sh
sudo apt-get install -y git curl unzip

for software in ./software/*.sh; do source $software; done
for config in ./config/*.sh; do source $config; done

gum confirm "Logout for all settings to take effect?" && gnome-session-quit --logout --no-prompt