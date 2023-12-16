#!/bin/sh
#

xbps-install -Syu
xbps-install -Sy $PACKAGES
xbps-install -S base-devel libX11-devel libXft-devel libXinerama-devel freetype-devel fontconfig-devel libxcb-devel xcb-proto xcb-util-devel xcb-util-wm-devel automake xcb-util-cursor-devel xcb-util-keysyms-devel elogind dbus gvfs udiskie bspwm dunst xorg git wget kitty fish-shell sxhkd neovim rofi feh alsa-utils font-inter font-iosevka font-firacode inkscape gimp gpick keepassxc mpv flameshot numlockx glances
nix-env -i brave taskwarrior 

cp -r $HOME/sys/git/void-bspwm/conf $HOME/
cp $HOME/sys/git/void-bspwm/.xinitrc $HOME/
cp $HOME/sys/git/void-bspwm/.bashrc $HOME/
mv $HOME/conf $HOME/.config
mkdir $HOME/usr
mkdir $HOME/usr/art $HOME/usr/dump $HOME/usr/osint
mkdir $HOME/sys/wall $HOME/sys/prog
cd $HOME/sys/git && git clone https://github.com/fairyglade/ly
ln -s /etc/sv/{nix-daemon,ly,elogind,dbus} /var/service/
rm /var/service/lxdm
rm /var/service/agetty-tty2
