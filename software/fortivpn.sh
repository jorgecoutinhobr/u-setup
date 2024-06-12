# NEED TESTING
cd ~/Downloads

wget -O libyatana-ind1.deb 'http://ftp.us.debian.org/debian/pool/main/liba/libayatana-appindicator/libayatana-appindicator1_0.5.5-2+deb11u2_amd64.deb'
wget -O linayatana-ind7.deb 'http://ftp.us.debian.org/debian/pool/main/liba/libayatana-indicator/libayatana-indicator7_0.8.4-1+deb11u2_amd64.deb'
wget -O libgtk4.deb 'http://security.ubuntu.com/ubuntu/pool/universe/libd/libdbusmenu/libdbusmenu-gtk4_18.10.20180917~bzr492+repack1-3ubuntu1_amd64.deb'
sudo dpkg -i *.deb

# Downloading packages
wget http://ftp.it.debian.org/debian/pool/main/g/gconf/gconf2_3.2.6-8_amd64.deb
wget http://ftp.it.debian.org/debian/pool/main/g/gconf/libgconf-2-4_3.2.6-8_amd64.deb
wget http://ftp.it.debian.org/debian/pool/main/g/gconf/gconf2-common_3.2.6-8_all.deb
wget http://ftp.it.debian.org/debian/pool/main/g/gconf/gconf-service_3.2.6-8_amd64.deb
wget http://ftp.it.debian.org/debian/pool/main/o/openldap/libldap-2.5-0_2.5.13%2bdfsg-5_amd64.deb

# Configuring the libgconf-2-4 package
sudo dpkg --configure -a

# Installing the libldap-2.5-0 package
sudo apt-get install libldap-2.5-0

# Installing the gconf packages
sudo dpkg -i gconf2_3.2.6-8_amd64.deb
sudo dpkg -i libgconf-2-4_3.2.6-8_amd64.deb
sudo dpkg -i gconf2-common_3.2.6-8_all.deb
sudo dpkg -i gconf-service_3.2.6-8_amd64.deb

# Resolving any potential dependency issues
sudo apt-get -f install

wget -O forticlient.deb 'https://drive.google.com/uc?export=download&id=10EWtL013UQD55ksNAPVD9sXj1v6QWqr8'
sudo dpkg -i forticlient.deb

rm forticlient.deb
rm libyatana-ind1.deb
rm linayatana-ind7.deb
rm libgtk4.deb
rm gconf2_3.2.6-8_amd64.deb
rm libgconf-2-4_3.2.6-8_amd64.deb
rm gconf2-common_3.2.6-8_all.deb
rm gconf-service_3.2.6-8_amd64.deb
rm libldap-2.5-0_2.5.13%2bdfsg-5_amd64.deb

cd -