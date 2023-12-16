#!/bin/sh

sudo pkill openntpd &
sudo openntpd &
sudo warp-svc &


