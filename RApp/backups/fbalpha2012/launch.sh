#!/bin/sh
echo $0 $*
RA_DIR=/mnt/SDCARD/RetroArch
./cpufreq.sh
swapon /mnt/SDCARD/App/swap/swap.img
cd $RA_DIR/
HOME=$RA_DIR/ $RA_DIR/retroarch.flip -v -L $RA_DIR/.config/retroarch/cores/fbalpha2012_libretro.so "$1"
swapoff /mnt/SDCARD/App/swap/swap.img