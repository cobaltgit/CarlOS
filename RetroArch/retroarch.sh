#!/bin/sh
cd $(dirname "$0")
export HOME=/mnt/SDCARD/RetroArch

sleep 1

./retroarch.flip -c $HOME/.config/retroarch/retroarch.cfg
