#!/bin/sh
echo $0 $*
RA_DIR=/mnt/SDCARD/RetroArch
./performance.sh
cd $RA_DIR/
HOME=$RA_DIR/ $RA_DIR/retroarch.flip -v -L $RA_DIR/.config/retroarch/cores/mednafen_supafaust_libretro.so "$1"