#!/bin/bash
## By Hebert F. Barros 2021

addPlank() {
    #Installing Plank
    echo 'Installing Plank'
    sudo apt install plank
    wget -O Plank-Config.desktop https://gist.githubusercontent.com/hebertcisco/edb0faaf256e69062fbbb88106d2ca18/raw/9da53f0012b6c38fff1712650250f483dff6f66c/Plank-Config.desktop
    mv -f Plank-Config.desktop /usr/share/applications/Plank-Config.desktop
    #Download the Mac OS theme for Plank.
    echo 'Downloading the Mac OS theme for Plank.'
    wget -O tema-plank.zip https://www.dropbox.com/s/kqhh1roorq5cxkl/tema-plank.zip
    mkdir -p ~/.local/share/plank/themes
    unzip tema-plank.zip -d ~/.local/share/plank/themes
    rm tema-plank.zip
}