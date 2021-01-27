#!/bin/sh
#for Arch linux and derivative distros
#untested
sudo pacman -Syu
sudo pacman -S unrar
sudo pacman -S wine-staging winetricks wine-mono 
rm -rf ~/.wine
WINEARCH=win32 WINEPREFIX=~/.wine wine wineboot
wget https://github.com/doitsujin/dxvk/releases/download/v1.7.3/dxvk-1.7.3.tar.gz
tar -xf dxvk-1.7.3.tar.gz
cd dxvk-1.7.3
export WINEPREFIX=~/.wine
./setup_dxvk.sh install
cd ~/Desktop
wget https://download2266.mediafire.com/fvexxg6k22ng/n3p1v3jj9mcvnrf/MBAACC+-+Community+Edition.0.22.rar
unrar x MBAACC+-+Community+Edition.0.22.rar
cd MBAACC\ -\ Community\ Edition/
cd MBAACC
rm d3dx9_36.dll D3DX9_43.dll
