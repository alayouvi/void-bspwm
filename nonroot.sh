#!/bin/sh
#

cp -r $HOME/sys/git/void-bspwm/conf $HOME/
cp $HOME/sys/git/void-bspwm/.xinitrc $HOME/
cp $HOME/sys/git/void-bspwm/.bashrc $HOME/
mv $HOME/conf $HOME/.config
mkdir $HOME/usr
mkdir $HOME/usr/art $HOME/usr/dump $HOME/usr/osint
mkdir $HOME/sys/wall $HOME/sys/prog

nix-channel --add http://nixos.org/channels/nixpkgs-unstable
nix-channel --update
