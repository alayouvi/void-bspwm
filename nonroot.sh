#!/bin/sh
#

cp -r $HOME/sys/git/void-bspwm/conf $HOME/
mv $HOME/conf $HOME/.config
cp $HOME/sys/git/void-bspwm/.xinitrc $HOME/
cp $HOME/sys/git/void-bspwm/.bashrc $HOME/
mkdir $HOME/usr
mkdir $HOME/usr/art $HOME/usr/dump $HOME/usr/osint
mkdir $HOME/sys/wall $HOME/sys/prog
chmod +x $HOME/.xinitrc
chmod +x $HOME/.config/bspwm/bspwmrc
cp $HOME/sys/git/wallpaper/* $HOME/sys/wall

nix-channel --add http://nixos.org/channels/nixpkgs-unstable
nix-channel --update
