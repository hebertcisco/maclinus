#!/bin/bash
## By Hebert F. Barros 2019
## Removing any apt ## crashes
sudo rm /var/lib/dpkg/lock-frontend
sudo rm /var/cache/apt/archives/lock

sudo apt-get update

# Install some required libraries
echo 'Installing some required libraries'
sudo apt-get install gtk2-engines-murrine gtk2-engines-pixbuf gnome-tweaks libcanberra-gtk3-module libcanberra-gtk-module libglib2.0-dev gir1.2-gtkclutter-1.0

# Download the Mac OS font.

echo 'Downloading the Mac OS font.'
wget -O mac-fonts.zip https://www.dropbox.com/s/m0kzhn7v92vus94/mac-fonts.zip

# Install the font.

echo 'Installing the font.'
unzip mac-fonts.zip -d ~/.fonts
rm mac-fonts.zip
sudo fc-cache -f -v

# Download the wallpapers.

echo 'Downloading the wallpapers.'
wget -O MacBuntu-Wallpapers.zip https://www.dropbox.com/s/c3ami2668ygv572/MacBuntu-Wallpapers.zip
unzip MacBuntu-Wallpapers.zip -d ~/Imagens
rm MacBuntu-Wallpapers.zip

# Download the icon theme.

echo 'Downloading the icon theme.'
wget -O mac-icons.zip https://www.dropbox.com/s/bkd1ew6afkvk2os/mac-icons.zip
unzip mac-icons.zip -d ~/.icons
rm mac-icons.zip

# Download the windows and Gnome Shell theme.

echo 'Downloading the windows and Gnome Shell theme.'
wget -O tema-macOS.zip https://www.dropbox.com/s/4w6vdjvhvewkk3x/tema-macOS.zip
unzip tema-macOS.zip -d ~/.themes
rm tema-macOS.zip

# Installing Plank

echo 'Installing Plank'
sudo apt install plank
wget -O Plank-Config.desktop https://gist.githubusercontent.com/hebertcisco/edb0faaf256e69062fbbb88106d2ca18/raw/9da53f0012b6c38fff1712650250f483dff6f66c/Plank-Config.desktop
mv -f Plank-Config.desktop /usr/share/applications/Plank-Config.desktop

# Download the Mac OS theme for Plank.
echo 'Downloading the Mac OS theme for Plank.'
wget -O tema-plank.zip https://www.dropbox.com/s/kqhh1roorq5cxkl/tema-plank.zip
mkdir -p ~/.local/share/plank/themes
unzip tema-plank.zip -d ~/.local/share/plank/themes
rm tema-plank.zip

## Finishing

echo 'Downloading'

# Move left dock panel to bottom
echo 'Moving left dock panel to bottom'
gsettings set org.gnome.shell.extensions.dash-to-dock dock-position BOTTOM
# Shorten the dock panel
echo 'Shortening the dock panel'
gsettings set org.gnome.shell.extensions.dash-to-dock extend-height false
# Move app launcher icon to left
echo 'Moving app launcher icon to left'
gsettings set org.gnome.shell.extensions.dash-to-dock show-apps-at-top true
# Set dock panel background transparency (range from 0 to 1)
echo 'Seting dock panel background transparency (range from 0 to 1)'
gsettings set org.gnome.shell.extensions.dash-to-dock background-opacity 0.3
