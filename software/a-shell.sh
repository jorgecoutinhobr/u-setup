[ -f "~/.bashrc" ] && mv ~/.bashrc ~/.bashrc.bak
cp ~/.local/share/u-setup/config/bashrc ~/.bashrc
source ~/.local/share/u-setup/config/bash/shell

[ -f "~/.inputrc" ] && mv ~/.inputrc ~/.inputrc.bak
cp ~/.local/share/u-setup/config/inputrc ~/.inputrc
