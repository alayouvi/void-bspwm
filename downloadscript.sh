#!/bin/sh
#

xbps-install -Syu
xbps-install -Sy $PACKAGES
xbps-install -S base-devel libX11-devel libXft-devel libXinerama-devel freetype-devel fontconfig-devel libxcb-devel xcb-proto xcb-util-devel xcb-util-wm-devel automake xcb-util-cursor-devel xcb-util-keysyms-devel elogind dbus gvfs udiskie bspwm dunst xorg git wget kitty fish-shell sxhkd neovim rofi feh alsa-utils font-inter font-iosevka font-firacode inkscape gimp gpick keepassxc mpv flameshot numlockx glances

ln -s /etc/sv/elogind /var/service/
ln -s /etc/sv/dbus /var/service/
rm -r .config
