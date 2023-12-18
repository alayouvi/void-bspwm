#!/bin/sh/

xbps-install -S nix
ln -s /etc/sv/nix-daemon /var/service/
nix-channel --add http://nixos.org/channels/nixpkgs-unstable
nix-channel --update
nix-env -i brave taskwarrior
