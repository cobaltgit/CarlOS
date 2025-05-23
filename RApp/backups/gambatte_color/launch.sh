#!/bin/sh
echo $0 $*
progdir=`dirname "$0"`
homedir=`dirname "$1"`
cd /mnt/SDCARD/RetroArch/
HOME=/mnt/SDCARD/RetroArch/ $progdir/../../RetroArch/retroarch.flip -v -L /mnt/SDCARD/RetroArch/.config/retroarch/cores/gambatte_libretro.so "$1"