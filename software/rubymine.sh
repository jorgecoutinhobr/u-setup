cd ~/Downloads
sudo apt-get install -y libfuse2
wget -O toolbox.tar.gz 'https://download.jetbrains.com/toolbox/jetbrains-toolbox-2.4.0.32175.tar.gz'
sudo tar xzf toolbox.tar.gz -C /opt/
rm toolbox.tar.gz
cd -