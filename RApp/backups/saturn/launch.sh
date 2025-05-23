#!/bin/sh
echo $0 $*
RA_DIR=/mnt/SDCARD/RetroArch

LD_LIBRARY_PATH="/mnt/SDCARD/App/utils/lib:/usr/miyoo/lib:/usr/lib" /mnt/SDCARD/App/utils/utils performance 2 1512 600 1080 1

cd $RA_DIR/
HOME=$RA_DIR/ $RA_DIR/ra32.miyoo -v -L $RA_DIR/.config/retroarch/cores/yabause_libretro.so "$1"
