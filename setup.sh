#!/bin/bash
source ./logo.sh
sudo apt-get install -y git curl unzip

for software in ./software/*.sh; do source $software; done

source ./config/bash.sh

gum confirm "Logout for all settings to take effect?" && gnome-session-quit --logout --no-prompt